# multi stage

### 멀티 스테이지 빌드

```docker
FROM node as [스테이지]

FROM node as [스테이지2]

COPY --from=[스테이지]
```

- Dockerfile 에서 한개의 이미지가 아닌 여러개의 이미지를 참조할 수 있다.
- `as` 명령어로 각 스테이지에 대한 이름을 지어 줄 수 있다.
- COPY 명령시 `--from` 명령어로 참조하고자 하는 이미지를 선택할 수 있다.

```powershell
> docker run --target [스테이지]
```

- docker 이미지 생성시 원하는 스테이지만 선택하여 이미지를 만들 수 있다.

### 예) 멀티 스테이지를 이용한 React build 및 서비스 Dockerfile

```docker
FROM node:14-alpine as build

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# react 소스 빌드
RUN npm run build

FROM nginx:stable-alpine

# build 스테이지의 빌드된 소스 복사
COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

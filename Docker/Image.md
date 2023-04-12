# Image

- 컨테이너의 블루프린트
- 실제로 코드와 코드를 실행하는데 필요한 도구를 포함
- 이미지를 기반으로 여러 컨테이너 생성 가능
- 레이어 기반

## 이미지의 작동 방식

> **Dockerfile** 에서 이미지를 생성(build)가 되면 **COPY** 명령어로 인해 이미지 생성시의 host 폴더 상태를 복사하였기 때문에 새롭게 생성(build) 하기 전까지 변경된 host 의 폴더 상태를 적용할 수 없다. 단, 다시 실행하는 명령이 존재하면 그 하위의 명령은 무조건 다시 실행한다.

### 이미지 생성 예1)

```docker
FROM node

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]
```

- 복사하려는 host 의 파일 상태가 변경되면, **COPY** 구문의 하위부터 다시 실행한다.
- host 의 package.json 이 변경되지 않았더라도, npm install 은 다시 실행된다.

### 이미지 생성 예2)

```docker
FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]
```

- 복사하는 host의 파일 상태가 변경 되더라도, package.json 이 변경되지 않으면 npm install 은 다시 실행되지 않는다.

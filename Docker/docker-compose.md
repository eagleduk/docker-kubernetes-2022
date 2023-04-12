# docker-compose

- 다중 컨테이너 관리, 설정 프로세스 자동화
- 단 하나의 명령으로 모든 이미지생성 및 컨테이너 실행과 컨테이너 종료를 할 수 있다.
- 다수의 build, run 명령을 단 하나의 구성파일로 관리하는 명령셋.
- 공유할 수 있는 정의된 언어를 사용하는 구성 파일
- dockerfile, 이미지 및 컨테이너를 대체할 수 없다. 다수의 호스트에서 다수의 컨테이너 관리하미 못한다.
- docker-compose.yaml(yml): .yaml 파일은 들여쓰기 사용으로 종속성이 적용된다.
- `-d` 옵션으로 detached mode 로 실행 가능
- docker compose 로 실행된 컨테이너들에는 컨테이서 종료시 삭제 옵션(`—-rm`)이 기본값이 된다.
- `--build` 옵션으로 이미지 강제 생성 가능
- docker-compose up(down) : compose 실행 / 종료
- compose 종료시 `-v` 옵션으로 생성된 명명 볼륨을 제거한다.

```docker
services:
  mongodb:
    image: "mongo"
    volumes:
      - data:/data/db
    environment:
      MONGO_INITDB_ROOT_USERNAME: admin
      MONGO_INITDB_ROOT_PASSWORD: admin
  backend:
    build: ./backend
    env_file:
      - ./env/backend.env
    ports:
      - "4000:80"
    volumes:
      - logs:/app/logs
      - ./backend:/app
      - /app/node_modules
    depends_on:
      - mongodb
  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    ports:
      - "3000:3000"
    volumes:
      - ./frontend/src:/app/src
      - /app/node_modules
    environment:
      - CHOKIDAR_USEPOLLING=true
    depends_on:
      - backend
    stdin_open: true
    tty: true

volumes:
  data:
  logs:
```

## services

[Services top-level element](https://docs.docker.com/compose/compose-file/05-services/)

- 제어할 컨테이너정의
- 정의된 컨테이너명으로 같은 compose 내에서 네트워크 명명 규칙이 이루어 진다.
- dockerfile 에 사용되는 명령을 오버라이드 할 수 있다.(working_dir, entrypoint)

### 1. image

- 컨테이너에서 사용될 이미지 정의
- 로컬 호스트에 정의된 이미지가 없을 때, docker hub 에서 검색한다.

### 2. volumes

- 컨테이너에서 사용될 볼륨 목록 정의
- `-` 를 사용하여 목록을 정의한다.
- 익명, 명명, 마운트 사용가능. 단 명명 볼륨은 compose 파일 내 정의 필요

### 3. build

- compose 실행시 docker image build 시 dockerfile 위치 정의
- cotext, dockerfile 하위 옵션으로 자세한 dockerfile 정의 가능

### 4. environment

- 환경설정 정의
- `env_file` 을 사용하여 파일을 사용할 수 있다.

### 5. ports

- publish port 정의

### 6. depends_on

- 의존성 정의
- 정의한 컨테이너가 먼저 실행되고 나서 해당 컨테이너가 실행된다.
- 만약 정의된 컨테이너가 실행되고 있지 않으면 실행을 시켜준다.

### 7. stdin_open

- 개방형 입력 연결 옵션

### 8. tty

- 터미널 연결 옵션

## volumes

[Volumes top-level element](https://docs.docker.com/compose/compose-file/07-volumes/)

- compose 에서 사용할 명명 볼륨 리스트 목록 정의

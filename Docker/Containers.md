# Containers

## React Container

- React 컨테이너를 실행할 때에는 `-it` 옵션을 추가해 주어야 한다.
- React 컨테이너 hot reload 를 위해서는 환경변수 `CHOKIDAR_USEPOLLING=true` 를 추가해 주어야 한다.(docker-compose.yml 을 사용하는 방법도 있는것 같은데 실패)
- React 는 frontend 부분이기 때문에 API 는 브라우저에서 호출하는 함수가 된다. 따라서 backend 사용을 위하여 docker network를 설정해도 컨테이너 명으로 API 를 호출할 수가 없다. 그러므로 backend publish 포트를 설정해주어야 localhost API 를 사용할 수 있다.

## MongoDB Container

- Docker hub 에 공식 이미지를 사용하여 실행 [참조: [mongo](https://hub.docker.com/_/mongo)]
- DataBase 저장 위치 `/data/db`
- 보안을 위해 username(`MONGO_INITDB_ROOT_USERNAME`), password(`MONGO_INITDB_ROOT_PASSWORD`)를 추가할 수 있다. (admin/admin 외는 접속 되지 않는다.)

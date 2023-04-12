# Commands

- 모든 명령어에는 **--help** 옵션으로 도움말을 확인할 수 있다.

```powershell
> docker run [이미지 명]
```

- Docker 이미지를 실행시키는 명령어
- 이미지를 찾을 수 없다면, 자동으로 docker hub 에서 찾아 다운로드 한다.

![Untitled](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled.png)

- **-t** 컨테이너의 터미널 오픈
- **-i** 컨테이너의 입력 대기 오픈
- **-it** 옵션을 추가하면 컨테이너 내부에서 호스팅 머신으로 대화형 세션을 노출한다.

![**[좌] 컨테이너 호스팅 머신의 node 버전, [우] 로컬 머신의 node 버전**](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled%201.png)

**[좌] 컨테이너 호스팅 머신의 node 버전, [우] 로컬 머신의 node 버전**

- **-p**
  - (publish)옵션을 추가하면 host 머신의 포트와 노출되어 있는 컨테이너의 포트와 연결할 수 있다.
  - 로컬 호스트 머신이나 docker network 외부에서 컨테이너에 접근하기 위한 포트 오픈. docker network 컨테이너간 서로 자유롭게 통신이 가능하다.
  ```powershell
  docker run -p 3000:80 [이미지 명]
  ```
- 이미지를 기반으로 하는 새로운 컨테이너를 생성 및 실행한다.
- 기본으로는 attasched 모드(연결된 모드) 로 실행
- **-d** 옵션으로 detached 모드(분리된 모드) 로 실행 가능하다.
- **--rm** 옵션으로 컨테이너가 종료시 자동 삭제되는 컨테이너를 실행한다.
- **--name** 옵션으로 컨테이너의 ID를 대체할 수 있는 이름을 부여할 수 있다.
- **-v**
  - **익명 볼륨 :** [컨네이너 위치] 볼륨명을 지정하지 않으면 익명 볼륨으로 볼륨이 생성된다.
  - **명명 볼륨 :** [볼륨명]**:**[컨네이너 위치] 형태로 컨테이너를 시작할 때 사용할 볼륨을 지정한 위치와 연결 시킨다. 볼륨명을 지정하지 않으면 익명 볼륨으로 볼륨이 생성된다.
  - **바운드 마운드 :** [호스트 머신에서의 경로]:[컨테이너 위치] 형태로 컨테이너를 시작할 때 호스트 머신과 컨테이너간 바인드 마운트를 실행한다.
  - 볼륨 위치 정의 이후 **:ro** 옵션으로 읽기 전용으로 설정한다.
- **--env(-e)** 옵션으로 [키]=[값] 식으로 애플리케이션에서 사용할 환경 변수를 정의한다.
- **--env-file** 옵션으로 환경변수가 정의되어 있는 파일을 사용하여 환경 변수를 정의한다.
- **--network** 옵션을 사용하여 docker 네트워크를 사용하는 컨테이너를 실행한다. 단, 네트워크는 자동으로 생성되지 않는다.
- 명령문 마지막에 입력되는 명령어로 실행하고자 하는 컨테이너에서 실행하고자하는 명령어를 입력할 수 있다.

```powershell
> docker ps
```

- 현재 실행되고 있는 컨테이너 리스트 출력
- **-a** 옵션을 추가하면 모든 컨테이너 리스트 출력

![Untitled](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled%202.png)

```powershell
> docker build [path]
```

- **[path]** 에 위치해 있는 Dockerfile 을 기반으로 이미지 생성
- **-t**
  - 옵션을 사용하여 [REPOSITORY]:[TAG] 형태로 이름 및 버전을 부여할 수 있다.
  - REPOSITORY 는 일반적인 이름을, TAG 에는 특정화된 버전을 부여한다.
  - 이미지의 ID 대신 [REPOSITORY]:[TAG] 형태로 사용 가능
- **--build-arg** 옵션으로 이미지를 생성할 때, 환경변수를 지정하여 이미지를 생성할 수 있다. 따라서 환경변수만 다른 이미지를 여러개 생성이 가능하다.

```powershell
> docker stop [컨테이너 명]
```

- 현재 실행중인 컨테이너를 종료한다.

```powershell
> docker --help
```

- docker 명령어 확인

```powershell
> docker start [컨테이너 ID 또는 이름]
```

- 중지된 컨테이너를 재시작 한다.
- 기본으로는 detached 모드(분리된 모드) 로 실행 → 현재 동작중인 로그를 확인 할 수없다.
- **-a** 옵션으로 attached 모드(연결된 모드) 로 실행 가능하다. → 컨테이너의 출력을 받는다.
- **-i** 옵션으로 컨테이너에 입력값을 줄 수 있다.

```powershell
> docker attach [컨테이너 ID 또는 이름]
```

- detached 모드(분리된 모드)의 컨테이너에 연결할 수 있다.

```powershell
> docker log [컨테이너 ID 또는 이름]
```

- 컨테이너의 로그를 확인할 수 있다.
- **-f** 옵션으로 해당 로그를 실시간으로 확인 할 수 있다.

```powershell
> docker rm [컨테이너 ID 또는 이름] [컨테이너 ID 또는 이름] ...
```

- 입력된 컨테이너 삭제
- 삭제할 컨테이너들 사이에 공백으로 여러개를 한번에 삭제 가능하다.

```powershell
> docker images
```

- 생성된 이미지 목록 확인

```powershell
> docker rmi [이미지 ID 또는 REPOSITORY] [이미지 ID 또는 REPOSITORY] ...
```

- 입력된 이미지 삭제
- 삭제할 이미지들 사이에 공백으로 여러개를 한번에 삭제 가능하다.
- 이미지는 현재 컨테이너에서 사용되지 않고 중지된 컨테이너가 없는 이미지만 삭제 가능하다.
- 이미지를 사용하는 컨테이너가 없어야 삭제 가능.

```powershell
> docker image prune
```

- 현재 사용되고 있지 않은 이미지들 자동 삭제
- 이미지를 사용하는 컨테이너가 없는 이미지들만 삭제

```powershell
> docker image inspect [이미지 ID 또는 REPOSITORY]
```

- 이미지의 상세 정보 보기
- **Container**: 사용중인 컨테이너
- **Config.ExposedPorts**: 노출된 port 정보
- **Config.Env**: 환경변수
- **Config.Cmd**: EntryPoint 명령
- **DockerVersion**: Docker 버전
- **Os**: 운영체제
- **RootFS.Layers**: 구성하고 있는 레이어 이미지들. 해당 이미지를 재 빌드시, 구성되어 있는 레이어 이미지의 변경 사항을 체크하여 변경될 레이어만 새로 빌드하는데 사용된다.

```powershell
> docker cp [source] [target]
```

- 컨테이너에서 호스트로 또는 호스트에서 컨테이너로 파일을 복사한다.
- 컨테이너의 위치를 설정할 때에는 **_[컨네이너 이름 또는 ID]:[위치]_** 형태로 작성한다.
- 주로 컨테이너에 저장되어 있는 로그파일을 추출하기 위해 사용하는 것을 권장.

```powershell
> docker tag [source] [target]
```

- docker 이미지의 이름[REPOSITORY](:태그[TAG]) 를 변경한다.
- 기존 이미지를 삭제하지 않고 복사하여 이름[REPOSITORY](:태그[TAG]) 를 부여한다.

```powershell
> docker volume
```

- docker volume 에 관한 명령어
- 생성, 삭제, 정보보기, 리스트 등을 확인할 수 있다.

```powershell
> docker network create [네트워크 이름]
```

- docker network 를 생성한다.

```docker
> docker-compose
```

- **build**
  - compose 내의 이미지를 생성한다.
- **up**
  - compose 내의 컨테이너를 실행한다.
  - `--build` 옵션으로 생성된 이미지를 무시하고 새로 생성한다.
  - `-d` detached mode 로 실행한다.
- **down**
  - 실행중인 compose 컨테이너를 종료한다.
  - `-v` 옵션으로 compose 실행시 생성된 명명 볼륨을 제거한다.

```docker
> docker exec [컨테이너명] [명령어]
```

- 실행중인 컨테이너에 명령어를 실행한다.

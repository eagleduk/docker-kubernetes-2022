# Commands

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

- **-p** (publish)옵션을 추가하면 host 머신의 포트와 노출되어 있는 컨테이너의 포트와 연결할 수 있다.
  ```powershell
  docker run -p 3000:80 [이미지 명]
  ```
- 이미지를 기반으로 하는 새로운 컨테이너를 생성 및 실행한다.
- 기본으로는 attasched 모드(연결된 모드) 로 실행
- **-d** 옵션으로 detached 모드(분리된 모드) 로 실행 가능하다.
- **--rm** 옵션으로 컨테이너가 종료시 자동 삭제되는 컨테이너를 실행한다.

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
> docker rmi [이미지 ID 또는 이름] [이미지 ID 또는 이름] ...
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

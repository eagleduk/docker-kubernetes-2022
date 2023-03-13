# Docker Hub

- docker 이미지를 공유하기 위한 공식 hub
- docker hub 에 업로드(push) 하기 위해서는 docker hub repository 와 호스트의 image repository 가 동일 해야 한다.
- TAG 를 입력하지 않으면 자동으로 ‘lastest’ 버전으로 인식

```powershell
> docker login[logout]
```

- docker hub 에 login[logout]

```powershell
> docker push [REPOSITORY](:[TAG])
```

- 해당되는 REPOSITORY 에 업로드(push)
- 따로 업로드 대상을 지정하지 않고, REPOSITORY 로 업로드 대상을 결정.
- REPOSITORY 를 사용하기 때문에 docker hub 에 로그인 필수

```powershell
> docker pull [REPOSITORY](:[TAG])
```

- 공개 설정된 REPOSITORY에 대하여 로그인 없이 다운로드(pull) 받을 수 있다.
- TAG를 입력하지 않으면 언제나 latest 버전을 다운로드 한다.
- **docker run [REPOSITORY]** 명령어는 TAG를 입력하지 않으면 로컬에서 찾기 때문에 다운로드된 버전이 있다면 docker hub 에서 찾지 않고 로컬에서 구동되기 때문에 최신 버전을 다운로드 받으려면 **PULL** 명령어를 사용 해야 한다.

# Dockerfile

<aside>
💡 모든 Dokerfile의 명령어는 대문자로 이루어진다.

</aside>

```docker
FROM [이미지]

WORKDIR [path]

COPY [path1] [path2]

RUN [command]

EXPOSE [port]

CMD [[command1],[command2]]
```

### FROM

- 실행하고자 하는 이미지

### WORKDIR

- 명령어를 실행할 컨테이너에서의 폴더 위치

### COPY

- 복사할 host file system 에 있는 파일 폴더 위치
- 복사될 컨테이너에서의 폴더 위치

### RUN

- 실행하고자 하는 명령어
- 이미지가 생성될 때 실행

### CMD

- 실행하고자 하는 명령어
- 컨테이너가 생성될 때 실행

### EXPOSE

- 컨테이너가 시작될 때 외부와 연결되는 포트를 노출

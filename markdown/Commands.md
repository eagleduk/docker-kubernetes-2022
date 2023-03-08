# Commands

```powershell
> docker run node 
```

- 이미지를 실행시키는 명령어
- 이미지를 찾을 수 없다면, 자동으로 docker hub 에서 찾아 다운로드 한다.

![Untitled](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled.png)

- **-it** 옵션을 추가하면 컨테이너 내부에서 호스팅 머신으로 대화형 세션을 노출한다.

![**[좌] 컨테이너 호스팅 머신의 node 버전, [우] 로컬 머신의 node 버전**](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled%201.png)

**[좌] 컨테이너 호스팅 머신의 node 버전, [우] 로컬 머신의 node 버전**

```powershell
> docker ps
```

- 현재 실행되고 있는 컨테이너 리스트 출력
- **-a** 옵션을 추가하면 모든 컨테이너 리스트 출력

![Untitled](Commands%20ced7e063b296408d9d66b67e2a842306/Untitled%202.png)
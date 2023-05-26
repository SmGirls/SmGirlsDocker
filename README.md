# Simple Dockerfile



## Getting started
- 3D Bin Packing을 해주는 파이썬 코드를 토대로 컨테이너에 물류 적재
[3d-bin-packing-problem](https://github.com/ylmz-dev/3d-bin-packing-problem)


## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
git remote add origin https://lab.hanium.or.kr/23_HP027/simple-dockerfile.git
git clone https://lab.hanium.or.kr/23_HP027/simple-dockerfile.git
cd simple-dockerfile
git branch -M main
git push -uf origin main

```
## Component
- Dockerfile
- main.py : 우리의 의도대로 돌아가야하지만.. 약간의 error가 발생하는 코드 ... (수정 필요요)
- test.py : 간단한 기능이 들어가 있음 

## Dockerfile
```
# Dockerfile Build
docker build . -t visualize:allcmd
# 실행 및 포트포워딩
- 환경변수를 각각 부여해 컨테이너 이미지 실행
docker run -e START_ROW=1 -d -p 8086:80 visualize:allcmd
docker run -e START_ROW=11 -d -p 8087:80 visualize:allcmd
docker run -e START_ROW=21 -d -p 8088:80 visualize:allcmd
```
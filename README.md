# 프로젝트 소개 
이 프로젝트는 오픈소스 물류관리 소프트웨어인 "Warehouse Management System"을 활용하여 다양한 창고물류 입출력 시스템을 해상 물류 컨테이너 시스템에 효과적으로 적용하여 시뮬레이션하는 것을 목표로 한다. 이를 위해 "쿠버네티스" 환경에서 운영하여 대량의 시뮬레이션을 실시할 수 있으며, 이를 통해 빠르고 효율적으로 인프라를 관리하고 컨테이너 물류 시스템을 안정적으로 운영하고자 한다. 

## 작품 기능
ㅇ 효율성있는 물류 선적 알고리즘 
ㅇ 물류 관리 소프트웨어를 통한 시뮬레이션 데이터 입출력   
ㅇ 실제 선박에 선적되는 수천톤의 수하물에 해당하는 컨테이너 물류 입출력 
   ㅇ 대량의 데이터가 담긴 csv 파일 입력
   ㅇ 데이터 수기 입력
ㅇ 입력 데이터에 따른 물류 선적 시뮬레이터 동작과 결과물 출력 
ㅇ 쿠버네티스를 사용한 마이크로서비스 운영/관리

## 프로젝트 시나리오
![image](https://github.com/SmGirls/SmGirlsDocker/assets/79689822/a28dcbc5-a072-4c9f-bb36-df92c9b95a65)


## SW 구성도
![image](https://github.com/SmGirls/SmGirlsDocker/assets/79689822/d842325d-ddcf-4a87-9e56-d1cc44c55450)

## PV 와 PVC 배치도
![image](https://github.com/SmGirls/SmGirlsDocker/assets/79689822/7252f82c-f18e-405e-8e51-14b23525d82d)

## 프로젝트 영상 요약 소개
[유튜브 링크](https://www.youtube.com/watch?v=VAB8FhqrSd4)

---
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


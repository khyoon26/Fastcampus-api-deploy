FROM centos:latest 

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - 
RUN yum install -y nodejs
RUN mkdir Fastcampus-api-deploy
# Node.js 8.x 설치

COPY ./ Fastcampus-api-deploy/
# 프로젝트 코드 컨테이너 안으로 이동

WORKDIR Fastcampus-api-deploy
# NPM을 통해 Package module 설치

RUN npm install
# container listen port 설정

EXPOSE 8080

CMD ["node", "bin/www"]
# container process 실행 방법

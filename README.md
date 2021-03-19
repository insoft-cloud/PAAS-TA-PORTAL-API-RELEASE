# PAAS-TA-PORTAL-RELEASE

[대민 프로젝트] PAAS-TA-PORTAL-API-RELEASE v3.0<br>

Notices
---
- CVE
- Use PAAS-TA-PORTAL-API-RELEASE = v.1.0.0
- Use PAAS-TA-PORTAL-RELEASE >= v.1.0.1
- 각 api 별 Spring Boot 및 lib 버전 업그레이드, log file 반영
- DB Hikari Connection Pool size 50으로 사이즈 업
  - Jinq Stream 제거, Hikari configuration 추가
- PORTAL-API : uaa java client 버전 업(v1.0.3)
- PORTAL-WEBUSER : 메모리(space별) 수정 반영
- PORTAL-WEBADMIN 
  - 메인 화면 버그 수정 반영
  - 운영관리 > 앱 개발환경 > app 샘플 파일 업데이트 기능 수정 반영
  - 운영관리 > 사용자 관리 비밀번호 초기화 기능 추가

   
※ 특이사항
---
- spring cloud zuul, ribbon의 경우 Spring Boot 지원 버전 제한이 있음.(2.0.0.RELEASE 이상 2.4.0.M1 미만)   
  - Spring Boot 가장 최신 버전 2.4.2는 불가하여 paas-ta-portal-gateway 프로젝트는 Spring Boot 버전을 2.3.8.RELEASE로, spring cloud 버전을 Hoxton.SR8로 낮춤.
- PORTAL-WEBUSER에서 샘플 앱 배포를 위해 API 호출 시 도메인 간 에러 발생하여 API의 Spring Boot 버전을 2.4.2 RELEASE에서 2.3.0.RELEASE로 낮춤
  - Spring Boot 버전이 낮춰짐에 따라 spring cloud 버전 (2020.0.0 -> Hoxton.SR8), cf-java-client (5.1.0.RELEASE -> 4.14.0.RELEASE)로 버전 다운그레이드

PaaS-TA Portal Release Configuration
---
- binary_storage : 1 machine
- haproxy : 1 machine
- mariadb : 1 machine
- paas-ta-portal-registration : 1 machine
- paas-ta-portal-gateway : 1 machine
- paas-ta-portal-api : 1 machine
- paas-ta-portal-common-api : 1 machine
- paas-ta-portal-log-api : 1 machine
- paas-ta-portal-storage-api : 1 machine
- paas-ta-portal-webuser : 1 machine
- paas-ta-portal-webadmin : 1 machine

Create PaaS-TA Portal Release
---
- Download the latest PORTAL Release
```
git clone -b v3.0 https://github.com/insoft-cloud/PAAS-TA-PORTAL-RELEASE.git
```

- Download & Copy "source files" into the src directory
```
## unzip download source files
$ unzip src-3.0.zip -d <src dircetory path>/
  : @JANDI 드라이브
    (폴더명 : 대민정보통합운영체계구축2차사업_200501~ 210225 
  			> paasta-5.0 
  			> PAAS-TA-PORTAL-RELEASE 이하 디렉토리)


- 아래 directory 중 없는 파일은 src.zip에서 해당하는 파일 사용.

## final src directory    
src   
  ├── apache2   
  │   ├── apr-1.7.0.tar.gz   
  │   ├── apr-util-1.6.1.tar.gz   
  │   ├── expat-2.2.8.tar.gz   
  │   ├── httpd-2.4.46.tar.gz   
  │   └── pcre-8.43.tar.gz 
  ├── haproxy   
  │   └── haproxy-1.6.5.tar.gz   
  ├── java   
  │   └── server-jre-8u121-linux-x64.tar.gz   
  ├── mariadb   
  │   └── mariadb-10.1.22-linux-x86_64.tar.gz   
  ├── paas-ta-portal-api   
  │   └── paas-ta-portal-api.jar   
  ├── paas-ta-portal-common-api   
  │   └── paas-ta-portal-common-api.jar   
  ├── paas-ta-portal-gateway   
  │   └── paas-ta-portal-gateway.jar   
  ├── paas-ta-portal-infra-admin   
  │   └── paas-ta-portal-infra-admin.jar   
  ├── paas-ta-portal-log-api   
  │   └── paas-ta-portal-log-api.jar   
  ├── paas-ta-portal-registration   
  │   └── paas-ta-portal-registration.jar   
  ├── paas-ta-portal-storage-api   
  │   └── paas-ta-portal-storage-api.jar
  ├── paas-ta-portal-webuser   
  │   └── paas-ta-portal-webuser.tar.gz  
  ├── paas-ta-portal-webadmin   
  │   └── paas-ta-portal-webadmin.war     
  ├── python   
  │   └── Python-2.7.8.tgz   
  └── swift-all-in-one   
      └── swift-all-in-one.tar.gz
```

- Create PaaS-TA Portal Release
```
## <VERSION> :: release version (e.g. 3.0)   
## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-portal-release-<VERSION>.tgz)   
$ bosh -e <bosh_name> create-release --name=paasta-portal-release --sha2 --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force   
```


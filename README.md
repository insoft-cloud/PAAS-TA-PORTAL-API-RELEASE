# PAAS-TA-PORTAL-RELEASE

[대민 프로젝트] bosh 2.2 PAAS-TA-PORTAL-API-RELEASE <br>

Notices
---
- CVE
- Use PAAS-TA-PORTAL-API-RELEASE = v.1.0.0
- Use PAAS-TA-PORTAL-RELEASE >= v.1.0.1
- 각 api 별 spring boot 및 lib 버전 업그레이드, log file 반영
- DB Hikari Connection Pool size 50으로 사이즈 업
- portal web user 메모리(space별) 수정 반영
- portal web admin 메인 화면 버그 수정 반영
   
※ 특이사항
---
- spring cloud zuul, ribbon의 경우 spring boot 지원 버전 제한이 있음.(2.0.0.RELEASE 이상 2.4.0.M1 미만)   
  - spring boot 가장 최신 버전 2.4.2는 불가하여 paas-ta-portal-gateway 프로젝트는 spring boot 버전을 2.3.8.RELEASE로, spring cloud 버전을 Hoxton.SR8로 낮춤.

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
git clone -b v2.2 https://github.com/insoft-cloud/PAAS-TA-PORTAL-RELEASE.git
```

- Download & Copy "source files" into the src directory
```
## unzip download source files
$ unzip src-2.2.zip -d <src dircetory path>/
  : @JANDI 드라이브(파일명 : PAAS-TA-PORTAL-RELEASE)

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
## <VERSION> :: release version (e.g. 2.0.0)   
## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-portal-release-<VERSION>.tgz)   
$ bosh -e <bosh_name> create-release --name=paasta-portal-release --sha2 --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force   
```


# PAAS-TA-PORTAL-RELEASE

[대민 프로젝트] bosh 2.0 PAAS-TA-PORTAL-API-RELEASE <br>

Notices
---
- CVE
- Use PAAS-TA-PORTAL-API-RELEASE = v.1.0.0
- Use PAAS-TA-PORTAL-RELEASE >= v.1.0.1

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
https://github.com/insoft-cloud/PAAS-TA-PORTAL-RELEASE.git
```

- Download & Copy "source files" into the src directory
```
## unzip download source files
$ unzip src.zip -d <src dircetory path>/
  : @JANDI 드라이브(파일명 : PAAS-TA-PORTAL-RELEASE)

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


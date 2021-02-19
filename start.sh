bosh create-release --sha2 --force --tarball ./paasta-portal-release-2.2.tgz --name paasta-portal-release --version 2.2


bosh upload-release ./paasta-portal-release-2.2.tgz

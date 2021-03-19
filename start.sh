bosh create-release --sha2 --force --tarball ./paasta-portal-release-3.0.tgz --name paasta-portal-release --version 3.0


bosh upload-release ./paasta-portal-release-3.0.tgz

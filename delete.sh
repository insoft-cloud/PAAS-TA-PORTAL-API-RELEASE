echo 'Y' | bosh deld -d paasta-portal-api

rm -rf paasta-portal-api-release-2.0.tgz 
rm -rf dev_releases/
echo 'Y' | bosh delr paasta-portal-api-release

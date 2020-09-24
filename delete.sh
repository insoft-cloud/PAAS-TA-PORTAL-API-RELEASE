echo 'Y' | bosh deld -d paasta-portal

rm -rf paasta-portal-release-2.0.tgz
rm -rf dev_releases/
echo 'Y' | bosh delr paasta-portal-release

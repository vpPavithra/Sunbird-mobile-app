
NODE_OPTIONS=--max-old-space-size=4096 ionic cordova build android --prod --release --verbose --buildConfig ./buildConfig/build.json

if [ -n "$angularConfiguration" ]; then
  echo "$angularConfiguration"
  npm run ionic-build --angular-configuration=$angularConfiguration
else
  npm run ionic-build --angular-configuration=production
fi
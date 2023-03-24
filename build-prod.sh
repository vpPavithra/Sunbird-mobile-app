#!/bin/bash

#Temporary Workaround to generate build as webpack was complaining of Heap Space
#need to inspect on webpack dependdencies at the earliest

NODE_OPTIONS=--max-old-space-size=6144 ionic cordova build android --prod --release --verbose --buildConfig ./buildConfig/build.json

if [ -n "$angularConfiguration" ]; then
  echo "$angularConfiguration"
  npm run ionic-build --angular-configuration=$angularConfiguration
else
  npm run ionic-build --angular-configuration=production
fi
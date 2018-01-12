#!/bin/bash

rm -rf ~/dart-sdk

if [ "$(uname)" == "Darwin" ]; then
  PLATFORM="macos-ia32"
else
  PLATFORM="linux-x64"
fi

echo "Downloading latest dart"
DOWNLOAD="https://storage.googleapis.com/dart-archive/channels/dev/release/"
LATEST="latest/sdk/dartsdk-$PLATFORM-release.zip"
curl $DOWNLOAD$LATEST -o /tmp/dart-release.zip
unzip -qo /tmp/dart-release.zip -d ~

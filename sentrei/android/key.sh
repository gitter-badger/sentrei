#!/bin/bash

gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output firebase/api.json firebase/api.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output firebase/key.jks firebase/key.jks.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output firebase/sentrei-alpha.json firebase/sentrei-alpha.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output firebase/sentrei-beta.json firebase/sentrei-beta.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output firebase/sentrei-master.json firebase/sentrei-master.json.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/api.json key/api.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/key.jks key/key.jks.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/sentrei-alpha.json key/sentrei-alpha.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/sentrei-beta.json key/sentrei-beta.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/sentrei-master.json key/sentrei-master.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/sentrei-beta.json key/sentrei-beta.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key/sentrei-master.json key/sentrei-master.json.gpg

rm -f key.properties
echo "storePassword=$ANDROID_SIGN_PWD" >> key.properties
echo "keyPassword=$ANDROID_SIGN_PWD" >> key.properties
echo "keyAlias=key" >> key.properties
echo "storeFile=key.jks" >> key.properties

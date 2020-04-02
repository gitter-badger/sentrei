#!/bin/bash

gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output api.json api.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output key.jks key.jks.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output sentrei-alpha.json sentrei-alpha.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output sentrei-beta.json sentrei-beta.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_SIGN_PWD" \
--output sentrei-master.json sentrei-master.json.gpg

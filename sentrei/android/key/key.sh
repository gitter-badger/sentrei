#!/bin/bash

gpg --quiet --batch --yes --decrypt --passphrase="$SENTREI_PASSPHRASE" \
--output api.json api.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$SENTREI_PASSPHRASE" \
--output key.jks key.jks.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$SENTREI_PASSPHRASE" \
--output sentrei-alpha.json sentrei-alpha.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$SENTREI_PASSPHRASE" \
--output sentrei-beta.json sentrei-beta.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$SENTREI_PASSPHRASE" \
--output sentrei-master.json sentrei-master.json.gpg

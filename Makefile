auth:
	keytool -list -v -alias key -keystore android/key/key.jks

delete:
	keytool --delete -v -keystore android/key/key.jks -alias key

encrypt:
	keytool -genkey -v -keystore android/key/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
	gpg --symmetric --cipher-algo AES256 android/key/api.json
	gpg --symmetric --cipher-algo AES256 android/key/key.jks
	gpg --symmetric --cipher-algo AES256 android/firebase/sentrei-alpha.json
	gpg --symmetric --cipher-algo AES256 android/firebase/sentrei-beta.json
	gpg --symmetric --cipher-algo AES256 android/firebase/sentrei-master.json

format:
	flutter format lib

upgrade:
	flutter pub upgrade

generate:
	keytool -genkey -v -keystore android/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

auth:
	keytool -list -v -alias key -keystore android/key.jks

fix:
	flutter format lib

upgrade:
	flutter pub upgrade

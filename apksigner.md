### Generate Key
```
keytool -genkeypair -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias the-key
```
### Sign APK
#### Install
```
pkg install apksigner
```
#### Sign APK
```
apksigner sign --ks key.jks --ks-key-alias the-key --ks-pass pass:passwd --out package.apk ~/app-release-unsigned.apk
```
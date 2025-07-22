## F-Droid Push App
### Fork
Fork [https://gitlab.com/fdroid/fdroiddata](https://gitlab.com/fdroid/fdroiddata).
### Git Clone
```
git clone https://gitlab.com/Willie169/fdroiddata.git
```
### Metadata
```
cd fdroiddata/metadata
nano app_id.yml
```
app_id.yml example: [https://github.com/Willie169/mancala-android/blob/main/fdroiddata%2Fmetadata%2Fcom.willie.mancala.yml](https://github.com/Willie169/mancala-android/blob/main/fdroiddata%2Fmetadata%2Fcom.willie.mancala.yml).
```
Categories:
  - Game
License: AGPL-3.0-or-later
SourceCode: https://github.com/Willie169/mancala-android
IssueTracker: https://github.com/Willie169/mancala-android/issues
Changelog: https://github.com/Willie169/mancala-android/releases
AutoName: Mancala
RepoType: git
Repo: https://github.com/Willie169/mancala-android.git
app_id: com.willie.mancala
Builds:
  - versionName: '1.0'
    versionCode: 1
    commit: 833f0f9757b3e7444d3ae3a068d9fccd8f269510
    subdir: app
    sudo:
      - apt-get update
      - apt-get install -y librsvg2-bin openjdk-17-jdk-headless
      - update-alternatives --auto java
    gradle:
      - yes
AutoUpdateMode: Version
UpdateCheckMode: Release
CurrentVersion: '1.0'
CurrentVersionCode: 1
```
### Pull Request
Your GitLab account should be verified.
```
glab mr create \
  --source-branch master \
  --target-branch master \
  --title "Add Mancala App" \
  --description "Categories:<br>  - Game<br>License: AGPL-3.0-or-later<br>SourceCode: https://github.com/Willie169/mancala-android<br>IssueTracker: https://github.com/Willie169/mancala-android/issues<br>Changelog: https://github.com/Willie169/mancala-android/releases<br>AutoName: Mancala<br>RepoType: git<br>Repo: https://github.com/Willie169/mancala-android.git<br>app_id: com.willie.mancala<br>Builds:<br>  - versionName: '1.0'<br>    versionCode: 1<br>    commit: 833f0f9757b3e7444d3ae3a068d9fccd8f269510<br>    subdir: app<br>    sudo:<br>      - apt-get update<br>      - apt-get install -y librsvg2-bin openjdk-17-jdk-headless<br>      - update-alternatives --auto java<br>    gradle:<br>      - yes<br>AutoUpdateMode: Version<br>UpdateCheckMode: Release<br>CurrentVersion: '1.0'<br>CurrentVersionCode: 1"
```

## F-Droid CLI Tool
### Install
```
pkg install fdroidcl
```
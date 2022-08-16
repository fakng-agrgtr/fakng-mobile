# fakng_mobile

## Links

* [Best practices](https://medium.com/flutter-community/flutter-best-practices-and-tips-7c2782c9ebb5)  
* [Commits naming](https://gist.github.com/Voloshin-Sergei/ffbec67c6d9fcb32b0df014ababba0e9)   
* [Blocs naming](https://github.com/felangel/bloc/blob/master/docs/ru/blocnamingconventions.md)  

## Practices

1. When declaring the id field / variable, it is necessary to specify what the id belongs to. Example: `chat ID`, `userID`, `messageId`

## Commands  

`Models adapters & freezed models generation`  `last hiveID: 0`  
flutter packages pub run build_runner build --delete-conflicting-outputs  

`Fix problems`  
dart fix --apply  

`APK build`  
flutter build apk --build-name=1.0.0 --build-number=2  

`Icons generation`  
flutter pub get  
flutter pub run flutter_launcher_icons:main  

`LocaleKeys generation`  
flutter pub run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart  

`assetlinks.json generation`  
keytool -list -v -keystore C:/Users/${your username}/.android/debug.keystore  

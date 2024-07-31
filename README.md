# zomato clone

# To create a new flutter project
`flutter create project_name`

# To automatically upgrade your package dependencies to the latest versions
`flutter pub upgrade--major-versions`.

# To see which dependencies have newer versions available
`flutter pub outdated`.

# To view all commands that flutter supports:
`flutter --help --verbose`.

# To get the current version of the Flutter SDK, including its framework, engine, and tools:
`flutter --version`.

# Delete the build/ and .dart_tool/ directories.
`flutter clean`.

# Show information about the installed tooling.
`flutter doctor`.

# Downgrade Flutter to the last active version for the current channel.
`flutter downgrade`.

# To run the app
`flutter run`.

# To build the app for android or realase mode
`flutter build apk` or `flutter build apk --split-per-abi`.

# To build the app for ios
`flutter build ios` 

# To build the app for web
`flutter build web`

# To build the app for windows
`flutter build windows`

# To build the app for macos
`flutter build macos`

# To build the app for linux
`flutter build linux`

# To build the app for all platforms
`flutter build all`

# To run the app on a specific device
`flutter run -d device_id`

# To list all the connected devices
`flutter devices`

# To list all the available devices
`flutter emulators`

# To create a new emulator
`flutter emulators --create`

# To run the app on a specific emulator
`flutter run -d emulator_id`

# To create a specific folder like android, ios, web, windows, macos, linux
`flutter create .`

# Generate localizations for the Flutter project.
`flutter gen-l10n <DIRECTORY>`

# To install a package
`dart pub add package_name`

# Take a screenshot of a Flutter app from a connected device.
`flutter screenshot`.

# Folder and File structure

- App
  - app.dart
  - start.dart
- Bloc
  - all blocs
- Data
  - models
  - repositories
  - services
- Views
  - all screens
- Debug
  - bloc_observer.dart
  - navigation_observer.dart
- Core
  - environment
  - utils
  - routes
  - exceptions
  - interceptors
- L10n
  - all localizations

main.dart

# Packages

# core dependencies

intl [ Used for date formatting ]
flutter_localization [ Used when the app will be used across multiple countries , app will be localized / internationalised in multiple languages with the help of both intl and flutter_localization. ]

url_launcher
socket_io_client
rxdart
pdf
printing
image_picker

# http dependencies

dio

# state management & caching dependencies

equatable
flutter_bloc
hydrated_bloc
crypto
path_provider

# firebase dependencies

firebase_core
firebase_messaging
firebase_crashlytics
firebase_analytics
firebase_in_app_messaging

# local notifications dependencies

flutter_local_notifications

# device info dependencies

device_info_plus
package_info_plus

# maps & location dependencies

google_maps_flutter
google_maps_flutter_web
geolocator

# routing dependencies

go_router

# webview & payment dependencies

webview_flutter
webview_flutter_web

# ui dependencies

carousel_slider
pinput
lottie
flutter_svg
shimmer
google_fonts
flutter_rating_bar
animated_text_kit
extended_image

# payment dependencies

hypersdkflutter
uuid

# connectity dependencies

connectivity_plus

# sharing dependencies

share_plus

# install referrer

android_play_install_referrer
timezone

# splash and icons dependencies

flutter_native_splash
icons_launcher

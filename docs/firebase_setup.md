Firebase is a mobile and web application development platform developed by Firebase, Inc. in 2011, then acquired by Google in 2014. Firebase provides a realtime database and backend as a service. The service provides application developers an API that allows application data to be synchronized across clients and stored on Firebase's cloud.

Firebase provides a variety of services to help you develop your application. Some of the services provided by Firebase are:

- **Firebase Realtime Database**: A NoSQL cloud database that supports data syncing in realtime.
- **Firebase Authentication**: A service that can authenticate users using only client-side code.
- **Firebase Cloud Messaging**: A cross-platform messaging solution that lets you reliably deliver messages at no cost.
- **Firebase Hosting**: A web hosting service that serves your static assets (HTML, CSS, JavaScript) over a CDN.
- **Firebase Storage**: A cloud storage service that allows you to upload and download user-generated content like images and videos.
- **Firebase Functions**: A serverless framework that lets you automatically run backend code in response to events triggered by Firebase features and HTTPS requests.

## Setting up Firebase with your Flutter app to connect all Platforms (Android, iOS, Web)

### Step 1: Create a Firebase Project

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Click on the `Add Project` button.
3. Enter your project name and click on the `Continue` button.
4. Click on the `Create Project` button.

### Step 2: Install the Firebase CLI

1. Install firebase_core package
2. Install the Firebase CLI globally : npm install -g firebase-tools
3. Active Flutter Fire cli : dart pub global activate flutterfire_cli
4. Authenticate the Firebase CLI by running the following command in your terminal: flutterfire login || firebase login
5. Automatically registers your per-platform apps with Firebase and adds a lib/firebase_options.dart configuration file to your Flutter project.: flutterfire configure --project=zomato-clone-8cdd6

/_ App ID's
web 1:121396534042:web:5ee59e7179e7e196b02aa3
android 1:121396534042:android:a6012a2cc7388586b02aa3
ios 1:121396534042:ios:0bbc79879b7b5669b02aa3
macos 1:121396534042:ios:0bbc79879b7b5669b02aa3
windows 1:121396534042:web:5ee59e7179e7e196b02aa3
_/

/\*

code to initialize firebase in flutter app in main.dart

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
\*/

### Step 2: Register your app with Firebase

1. Click on the `Add app` button.
2. Select the platform for your app (Android, iOS, Web).
3. Follow the instructions to register your app with Firebase.

### Step 3: Add Firebase SDK to your app

1. Add the Firebase SDK to your app by following the instructions provided by Firebase.

2. For Android, add the `google-services.json` file to your app.

3. For iOS, add the `GoogleService-Info.plist` file to your app.

4. For Web, add the Firebase configuration to your app.

# BEST WAY USING CLI

1. Create a project through Firebase Console
2. flutterfire configure -- list of projects will be shown or can create a new project through the CLI
3. select the project you want to connect with flutter app
4. Give the project name eg. com.example.cogito
5. select the platform you want to connect with the project (android, ios, web) default is all platforms
6. it will automatically add the required files to your project
7. add multiDexEnabled true in android/app/build.gradle
8. select yes for overriding the android and ios files
9. run the app and check the console for the firebase initialization message
10. if error add in your app/build.gradle):

dependencies {
constraints {
implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk7:1.8.0") {
because("kotlin-stdlib-jdk7 is now a part of kotlin-stdlib")
}
implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8:1.8.0") {
because("kotlin-stdlib-jdk8 is now a part of kotlin-stdlib")
}
}
}

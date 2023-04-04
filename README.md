# farmhelp

Google Solutions Farmers Application

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Process to run project
Clone the project using following command
git clone https://github.com/Akshay9607/GS_Farmers

After successfully cloning 
run following command in terminal by going to GS_Farmers directory
flutter pub get

Then you can run the project using command : flutter run 

For running backend : git clone https://github.com/DevangML/FarmBuddy-Backend

then make .env file inside FarmBuddy-Backend directory and
update mongoURI and
port = 3000
then you can run backend using command : npm start
If you are running on physical device make sure your computer and mobile are connected to same network for successful api calls and data fetching.
also as api's are not hosted so in code need to replace all ip addresses with your computer's ip address
for getting ip address open cmd and type ipconfig and copy the ipv4 address provided.


## Errors Encountered
If you encountered Build Failed then in you have to make some changes in external flutter plugin tflite.
Inside flutter flugins go to tflite-1.1.2/android/build.gradle 
and make changes as mentioned below : 

 dependencies {
        implementation 'org.tensorflow:tensorflow-lite:+'
        implementation 'org.tensorflow:tensorflow-lite-gpu:+'

    }
at places of compile you have to write implementation.

After this again use command : flutter pub get

and finally : flutter run
Congrats! Project Build Successfully.

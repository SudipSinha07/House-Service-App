import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:house/screens/login.dart';
import 'package:house/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    //height: 300,
                    child: Image.asset("assets/images/splash1.png")
                 ),
                SizedBox(
                  height: 30//Size.fromHeight(MediaQuery.of(context).size.height*60),
                ),
                Text("Powered By Oyelabs",style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54,
                ),),
                Text("with Love",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue,
                ),),
              ],
            ),
          //),
          duration: 3000,
          nextScreen: Signup(),
      splashIconSize: 250,
      ),


    );
  }
}

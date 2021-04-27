import 'package:flutter/material.dart';
import 'package:name_arguments/screens/LoginPageScreen.dart';
import 'package:name_arguments/screens/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     home: LoginPageScreen(),
      routes: {
        LoginPageScreen.routeName : (context)=>LoginPageScreen(),
        SecondScreen.routeName : (context)=>SecondScreen(),
      },

    );
  }
}




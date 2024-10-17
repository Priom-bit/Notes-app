import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getxwithnotesapp/Views/login_screen.dart';

import 'home.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
        });
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: Center(
          child: Text("Notes App",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        )
    );
  }
}

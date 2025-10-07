import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:kimit256/home_screen.dart';
import 'package:kimit256/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future navigat ()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final isLogged = prefs.getBool("isLoggedIn") ?? false;
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>isLogged == true ? HomeScreen() :  LoginScreen()));
    });

  }
  @override
  void initState() {
    super.initState();

    navigat();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    precacheImage(AssetImage("assets/images/splash_img.jpg"), context);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/images/splash_img.jpg").animate().fadeOut(duration: Duration(seconds: 3)).scale(),
      ),
    );
  }
}

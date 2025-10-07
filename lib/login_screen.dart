import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'details_scren.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          //layer1
          Padding(
            padding: const EdgeInsets.only(bottom: 110.0),
            child: Image.asset("assets/images/login_background.png",height: 702,),
          ),
          //layer2
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text(
                  textAlign: TextAlign.center,
                "Coffee so good, your taste buds \nwill love it.",
                              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 36

                              ),
                            ),
                SizedBox(
                  height: 10,
                ),
                Text(

                  textAlign: TextAlign.center,
                  "The best grain, the finest roast, the \npowerful flavor.",
                  style: TextStyle(
                      color: Color.fromRGBO(169, 169, 169, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: ()async{
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool("isLoggedIn", true);


                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    width: 317,
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google_logo.png",),
                        SizedBox(width: 8,),
                        Text("Contiue with google",style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.54)

                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 34,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

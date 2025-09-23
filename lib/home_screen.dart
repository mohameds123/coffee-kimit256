import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          //layer 1
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 270,
                color: Color.fromRGBO(43, 43, 43, 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Location Section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Location",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),

                              ),
                              Text("Bilzen,TanjungbalaiBilzen",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),

                              ),
                            ],
                          ),

                          ///profile section
                          Image.asset("assets/images/profile.png"),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 315,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(152, 152, 152, 0.5),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search,color: Colors.white,),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Search coffee",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(152, 152, 152, 1),

                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset("assets/images/filter_icon.png"),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ) ,
    );
  }
}

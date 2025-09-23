import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <String> coffeeType = ["Cappuccino", "Machiato", "Latte", "American Coffee"];
  int selectedItem = 0;
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
                  padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 12),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90.0,horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 38,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                            bool isSelected = selectedItem == index;
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: InkWell(
                                  onTap: (){
                                    selectedItem = index;
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    width: 121,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: isSelected ? Color.fromRGBO(198, 124, 78, 1) : Colors.grey.shade400,
                                    ),
                                    child: Center(
                                      child: Text(coffeeType[index],style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,color: Colors.white
                                      ),),
                                    ),
                                  ),
                                ),
                              );
                            },
                          itemCount: coffeeType.length,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          //layer 2
          Positioned(
              top: 210,
              left: 23,

              child: Image.asset("assets/images/panner.png"))
        ],
      ) ,
    );
  }
}

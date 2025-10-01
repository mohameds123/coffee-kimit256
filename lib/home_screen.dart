import 'package:flutter/material.dart';
import 'package:kimit256/details_scren.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  List<String> coffeeType = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "American Coffee",
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //layer 1
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 270,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 12,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///Location Section
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
        
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Bilzen,TanjungbalaiBilzen",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
        
                            ///profile section
                            Image.asset("assets/images/profile.png"),
                          ],
                        ),
                        SizedBox(height: 16),
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 90.0,
                      horizontal: 12,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 38,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                bool isSelected = selectedItem == index;
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.0,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      selectedItem = index;
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 121,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: isSelected
                                            ? Color.fromRGBO(198, 124, 78, 1)
                                            : Colors.grey.shade400,
                                      ),
                                      child: Center(
                                        child: Text(
                                          coffeeType[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: coffeeType.length,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: SizedBox(
                              height: 200,
                              child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 8,
                                    childAspectRatio: 0.7
                                  ),
                                  itemBuilder: (context, index){
                                    return  InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScren()));
                                      },
                                      child: Container(
                                        height: 238,
                                        width: 155,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),

                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/images/product_detail.png"),
                                            Text("Cappucino",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black
                                            ),
                                            ),
                                            Text("with chocolate",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(155, 155, 155, 1)
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("\$4.35",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18,
                                                      color: Colors.black
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(198, 124, 78, 1),
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Icon(Icons.add,color: Colors.white,),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                itemCount: 8,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //layer 2
            Positioned(
              top: 200,
              left: 23,
        
              child: Image.asset("assets/images/panner.png"),
            ),
          ],
        ),
      ),
    );
  }
}

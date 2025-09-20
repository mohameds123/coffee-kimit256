import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

class DetailsScren extends StatefulWidget {
  const DetailsScren({super.key});

  @override
  State<DetailsScren> createState() => _DetailsScrenState();
}

class _DetailsScrenState extends State<DetailsScren> {
  bool isFav = false;
  bool isM = false;
  bool isL = false;
  bool isS = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 24),
                  ),

                  Text(
                    "Detail",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),

                  IconButton(
                    onPressed: () {
                      isFav = !isFav;
                      setState(() {

                      });
                    },
                    icon: Icon(isFav == true ?Icons.favorite : Icons.favorite_border, size: 24),
                  ),
                ],
              ),
              Center(child: Image.asset("assets/images/coffee_details.png")),
              SizedBox(height: 10),
              Text(
                "Cappucino",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                "with Chocolate",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 4,
                children: [
                  Icon(Icons.star, color: Color.fromRGBO(251, 190, 33, 1)),
                  Text(
                    "4.8",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    "(230)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(155, 155, 155, 1),
                    ),
                  ),
                  Spacer(),

                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromRGBO(255, 240, 240, 1),
                    ),
                    child: Image.asset("assets/images/bean_icon.png"),
                  ),

                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromRGBO(255, 240, 240, 1),
                    ),
                    child: Image.asset("assets/images/milk_icon.png"),
                  ),
                ],
              ),
              Text(
                "Description",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 6),

              RichReadMoreText.fromString(
                text:
                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                settings: LengthModeSettings(
                  trimLength: 80,
                  trimCollapsedText: 'ReadMore',
                  trimExpandedText: ' ReadLess ',
                  onPressReadMore: () {
                    /// specific method to be called on press to show more
                  },
                  onPressReadLess: () {
                    /// specific method to be called on press to show less
                  },
                  lessStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1)),
                  moreStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1)),
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Size",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      isS = true;
                      isM = false;
                      isL = false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: isS == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1.5,
                          color: isS == true ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(222, 222, 222, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      isM = true;
                      isS = false;
                      isL = false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: isM == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1.5,
                          color: isM == true ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(222, 222, 222, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      isL  = true;
                      isS = false;
                      isM = false;
                      setState(() {

                      });},
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: isL == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1.5,
                          color: isL == true ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(222, 222, 222, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(155, 155, 155, 1),
                        ),
                      ),
                      Text(
                        isS == true ? "4\$" : isM == true ? "6\$" : "8\$",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromRGBO(198, 124, 78, 1),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: 217,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

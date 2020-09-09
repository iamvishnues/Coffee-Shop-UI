import 'dart:ui';

import 'package:coffeshop/constants/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetails extends StatefulWidget {
  final imgPath, headerColor;

  const CoffeeDetails({Key key, this.imgPath, this.headerColor})
      : super(key: key);
  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.transparent,
            ),
            Container(
              height: screenHeight,
              width: screenWidth,
              color: ColorPalette().leftBarColor,
            ),
            Container(
              height: screenHeight / 2,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Colors.white),
            ),
            Container(
              height: (screenHeight / 4 + 25.0),
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/doodle.png"),
                      fit: BoxFit.none)),
            ),
            Container(
              height: (screenHeight / 4 + 25.0),
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            Container(
              height: (screenHeight / 4 + 25.0),
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: widget.headerColor.withOpacity(0.8),
              ),
            ),
            Positioned(
              top: 35.0,
              left: 20.0,
              child: Icon(Icons.arrow_back),
            ),
            Positioned(
              top: 35.0,
              right: 20.0,
              child: Icon(Feather.shopping_bag),
            ),
            Positioned(
              top: (screenHeight / 4) - 100.0,
              left: screenWidth / 4,
              child: Hero(
                tag: widget.imgPath,
                child: Image(
                  image: AssetImage(widget.imgPath),
                  height: 175,
                  width: 175,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: (screenHeight / 4) + 85.0,
              left: screenWidth / 7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Grady's COLD BREW",
                      style: GoogleFonts.bigShouldersText(
                          color: Colors.black87, fontSize: 28),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Feather.user),
                        Text(
                          "1.5K",
                          style: GoogleFonts.bigShouldersText(
                              color: ColorPalette().firstSlice, fontSize: 28),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 1.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Feather.star),
                        Text(
                          "3.5",
                          style: GoogleFonts.bigShouldersText(
                              color: ColorPalette().firstSlice, fontSize: 28),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 25,
                          width: 1.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Feather.anchor),
                        Text(
                          "No.1",
                          style: GoogleFonts.bigShouldersText(
                              color: ColorPalette().firstSlice, fontSize: 28),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 1.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight / 2 + 10,
              left: 25.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: GoogleFonts.bigShouldersText(
                        color: Colors.black87, fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenWidth - 40,
                    child: Text(
                      "Grady's Cold Brew is an American coffee company known for its New Orleans-style cold brew coffee. Founded in 2011, the company is based in The Bronx, New York. Grady’s Cold Brew is a New Orleans–Style coffee concentrate.  Sip it straight, water it down, or milk it for all it's worth. Cheers!",
                      style: GoogleFonts.bigShouldersText(
                          color: Colors.black54, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: screenWidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        buildOneItem('\$65'),
                        SizedBox(
                          width: 20,
                        ),
                        buildOneItem('\$120'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 225,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorPalette().buttonColor),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.bigShouldersText(
                                color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: ColorPalette().buttonColor, width: 2.0)),
                        child: Center(
                          child: Icon(
                            Feather.bookmark,
                            size: 19.0,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildOneItem(price) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 200,
          color: Colors.transparent,
        ),
        Positioned(
          top: 50,
          child: Container(
            height: 75,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2.0)
                ],
                color: Colors.white),
          ),
        ),
        Positioned(
          right: 5,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/coffee3.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 5,
          top: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                price,
                style: GoogleFonts.bigShouldersText(
                    color: ColorPalette().firstSlice, fontSize: 25),
              ),
              Text(
                'Cold Brew Kit',
                style: GoogleFonts.bigShouldersText(
                    color: Colors.black87, fontSize: 28),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

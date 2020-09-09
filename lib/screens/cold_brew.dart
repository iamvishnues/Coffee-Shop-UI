import 'package:coffeshop/constants/color_palette.dart';
import 'package:coffeshop/screens/detailsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ColdBrew extends StatefulWidget {
  @override
  _ColdBrewState createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildListItem(
            'assets/coffee4.png', "150", ColorPalette().secondSlice, context),
        buildListItem(
            'assets/coffee2.png', "200", ColorPalette().firstSlice, context)
      ],
    );
  }

  buildListItem(String imgPath, String price, Color bgColor, context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 330,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage('assets/doodle.png'),
                      fit: BoxFit.none)),
            ),
          ),
          Positioned(
              top: 100,
              child: Container(
                height: 220,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.7)),
              )),
          Positioned(
              top: 100,
              child: Container(
                height: 220,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: bgColor.withOpacity(0.9)),
              )),
          Positioned(
            right: 30.0,
            child: Hero(
              tag: imgPath,
              child: Container(
                height: 250,
                width: 150,
                child: Image(
                  image: AssetImage(imgPath),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Positioned(
            top: 125.0,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: GoogleFonts.bigShouldersText(
                      color: Colors.black87, fontSize: 22),
                ),
                Text(
                  "\$" + price,
                  style: GoogleFonts.bigShouldersText(
                      color: Colors.white, fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Grady's COLD BREW",
                  style: GoogleFonts.bigShouldersText(
                      color: Colors.black87, fontSize: 28),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "65 reviews",
                            style: GoogleFonts.bigShouldersText(
                                color: Colors.black87, fontSize: 22),
                          ),
                          SmoothStarRating(
                            starCount: 5,
                            size: 15,
                            color: Colors.white,
                            borderColor: Colors.white,
                            rating: 3.5,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CoffeeDetails(
                                  imgPath: imgPath, headerColor: bgColor)));
                        },
                        child: Container(
                          width: 75,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Add",
                                style: GoogleFonts.bigShouldersText(
                                    color: Colors.black87, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_imtixon/PageOne.dart';

class Favourite extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String star;

  Favourite(
      {Key? key, required this.image, required this.title, required this.price, required this.star})
      : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282028),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 140),
            child: Text(
              "Favourites",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Solway", fontSize: 25),
            ),
          ),
          Container(
            width: 400,
            height: 110,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  width: 72,
                  height: 76,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 40,
                      width: 130,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontFamily: "Rosarivo",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        widget.price,
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 50, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white.withOpacity(0.1)),
                  child: Icon(Icons.favorite, color: Colors.red, size: 30,),
                ),
              ],
            ),
          ),
          SizedBox(height: 590,),
        ],
      ),
    );
  }
}

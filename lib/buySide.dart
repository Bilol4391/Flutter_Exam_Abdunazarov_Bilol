import 'package:flutter/material.dart';
import 'package:flutter_imtixon/PageOne.dart';

class BuySide extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String star;

  BuySide(
      {Key? key, required this.image, required this.title, required this.price, required this.star})
      : super(key: key);

  @override
  State<BuySide> createState() => _BuySideState();
}

class _BuySideState extends State<BuySide> {
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
              "Your Order:",
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
                  height: 40,
                  margin: EdgeInsets.only(left: 30, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white.withOpacity(0.1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          if (count != 0){
                            count--;
                          }
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.only(left: 11),
                          decoration: BoxDecoration(
                              color: Color(0xffEFE3C8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Text("-",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  count.toString(),
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                      ),
                      InkWell(
                        onTap: () {
                          count++;
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.only(left: 11),
                          decoration: BoxDecoration(
                              color: Color(0xffEFE3C8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset("assets/buyside.png"),
          ),
          SizedBox(height: 590,),
          count == 0 ? SizedBox.shrink() : InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageOne(image: widget.image, title: widget.title, star: widget.star, price: widget.price)));
            },
            child: Container(
              height: 80,
              width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Center(child: Text("buy now".toUpperCase(), style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: "Solway"),)),
            ),
          ) ,

        ],
      ),
    );
  }
}

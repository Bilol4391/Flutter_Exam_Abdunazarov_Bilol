import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  final String image;
  final String title;
  final String star;
  final String price;
  const PageOne({Key? key, required this.image, required this.title, required this.star, required this.price}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201520),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 450,
            height: 500,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage(widget.image), fit: BoxFit.cover
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  }
                  ,child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 20, top: 40),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/Ellipse 480.png"), fit: BoxFit.cover
                        )
                    ),
                    child: Icon(Icons.arrow_back_rounded, color: Colors.white,),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                height: 30, width: 260,
                child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, fontFamily: "Rosarivo", color: Colors.white, letterSpacing: 1),),
              ),
              Container(
                margin: EdgeInsets.only(left: 75),
                child: Icon(Icons.favorite, color: Color(0xffC94C4C), size: 40,),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child: Text("Drizzled with Caramel", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Rosarivo",
                  fontSize: 16,
                  color: Colors.white, letterSpacing: 1,
                ),),
              ),
              Container(
                child: Image.asset(
                    "assets/Vector 11.16.09.png"),
                margin: EdgeInsets.only(left: 28, top: 5),
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: 2, bottom: 0),
                  child: Text(widget.star,
                    style: TextStyle(
                        fontFamily: "Rosarivo",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.white),
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text("A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... Read More", style: TextStyle(
              fontFamily: "Opensans",
              fontWeight: FontWeight.w600,
              fontSize: 14,
              letterSpacing: .5,
              height: 1.7,
              color: Colors.white
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 20),
            child: Text("Choice of Milk", style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Rosarivo",
              fontSize: 16,
              color: Colors.white, letterSpacing: 1,
            ),),
          ),
          Row(
            children: [
              Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 12),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),child: Text("Oat Milk", style: TextStyle(
                      fontFamily: "Rosarivo",
                      fontSize: 14,
                      color: Color(0xff201520),
                    ),)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffEFE3C8)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 12),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),child: Text("Soy Milk", style: TextStyle(
                        fontFamily: "Rosarivo",
                        fontSize: 14,
                        color: Color(0xffEFE3C8)
                    ),)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Color(0xffEFE3C8))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 12),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),child: Text("Almond Milk", style: TextStyle(
                      fontFamily: "Rosarivo",
                      fontSize: 14,
                      color: Color(0xffEFE3C8)
                    ),)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Color(0xffEFE3C8))
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 30),
                    child: Text("Price", style: TextStyle(fontFamily: "OpanSans", fontSize: 14, color: Colors.white),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 5),
                    child: Text(widget.price, style: TextStyle(fontFamily: "OpenSans", color: Colors.white, fontSize: 24),),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 20, top: 27),
                height: 50,
                width: 265,
                decoration: BoxDecoration(
                  color: Color(0xffEFE3C8),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEFE3C8),
                  ),
                      onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                                content: Container(
                                  width: 300,
                                    height: 300,
                                    margin: EdgeInsets.only(right: 70, bottom: 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Choose your card:",style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),),
                                        margin: EdgeInsets.only(left: 30, top: 0),
                                      ),
                                      Container(
                                        child: Image.asset("assets/Card 2.png"),
                                        margin: EdgeInsets.only(left: 40, top: 10),
                                      ),
                                    ],
                                  ),
                                  ),

                          );
                        });
                      }
                    ,child: Center(child: Text("Buy now".toUpperCase(), style: TextStyle(fontFamily: "OpenSans", fontSize: 17, color: Color(0xff4A2B29)),))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

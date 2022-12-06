import 'package:flutter/material.dart';
import 'package:flutter_imtixon/IceCoffee.dart';
import 'package:flutter_imtixon/Snacks.dart';

import 'Coffee.dart';
import 'Sweet.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {

  List listOfImage = [
    "assets/Rounded rectangle.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];
  List listOfTitle = [
    "Hot Coffee",
    "Ice Coffee",
    "Snacks",
    "Sweet",
  ];
  List listOfText = [
    "Enjoy your hot coffee with a nice morning",
    "Cold coffee, a feeling of freshness and recharge of the body's activity",
    "A snack that eliminates hunger and gives a sense of activity",
    "You need sweet to relieve the stress of work and study",
  ];
  List listOfPage = [
    Coffee(image: '', title: '', price: ''),
    IceCoffe(image: '', title: '', price: '',),
    Snack(image: '', title: '', price: '',),
    Sweet(image: '', title: '', price: '',),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Image.asset("assets/Brand Logo.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 220),
              child: Image.asset("assets/Profile Picture.png"),
            ),
          ],
        ),

        SizedBox(height: 30,),
        Container(
          height: 57,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            style: TextStyle(color: Color(0xffEFE3C8).withOpacity(.5), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Rosarivo"),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff171017),
                hintText: "Browse your favourite coffee...",
                hintStyle: TextStyle(
                  fontFamily: "Rosarivo",
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xffEFE3C8).withOpacity(.5),
                ),
                prefixIcon: Container(margin: EdgeInsets.only(left: 12, right: 10),child: Icon(Icons.search_rounded, color: Color(0xffEFE3C8).withOpacity(.5), size: 30,)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                )
            ),
          ),
        ),
        SizedBox(height: 10,),

        SizedBox(
          height: 578,
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>listOfPage[index]));
                  },
                  child: Container(
                    width: 440,
                    height: 200,
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                      image: DecorationImage(
                          image: AssetImage(listOfImage[index]),
                          opacity: 0.7,
                          fit: BoxFit.contain
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(listOfTitle[index], style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 35,
                            color: Color(0xffFFF7EC),
                            fontFamily: "Solway",
                          ),),
                          margin: EdgeInsets.only(top: 80),
                        ),
                        Container(
                          height: 66,
                          width: 250,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(listOfText[index],
                            textAlign: TextAlign.center, style: TextStyle(
                                fontFamily: "Solway",
                                fontSize: 14,
                                color: Color(0xffE5E5E5).withOpacity(.8),
                                height: 1.6
                            ),),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_imtixon/SignIn.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 932,
        decoration: BoxDecoration(
          color: Color(0xff1D2335),
          image: DecorationImage(
            image: AssetImage("assets/background.png"),opacity: 0.7, fit: BoxFit.cover
          ),
        ),
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIn()));
          },
          child: Column(
            children: [
              Container(
                height: 132,
                width: 121,
                margin: EdgeInsets.only(top: 320, left: 25),
                child: Image.asset("assets/cub.png", fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text("Ordinary Coffee House", style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFAF6),
                  fontFamily: "Poppins",
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

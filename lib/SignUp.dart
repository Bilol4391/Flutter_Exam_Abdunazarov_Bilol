import 'package:flutter/material.dart';
import 'package:flutter_imtixon/Home.dart';
import 'package:flutter_imtixon/SignIn.dart';
import 'package:flutter_imtixon/SignUp.dart';
import 'package:flutter_imtixon/Splash.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  bool isPasswordVisible = false;
  bool isUsernameEmpty = false;
  bool isEmailEmpty = false;
  bool isPhoneEmpty = false;
  bool isPasswordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIn()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 60, left: 20),
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),

          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 37),
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff181D2D)),
            ),
          ),

          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 38),
            child: Text(
              "Create an account here",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xffAAAAAA),
                  fontFamily: "Poppins",
                  letterSpacing: .3),
            ),
          ),

          SizedBox(height: 60),
          Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: Color(0xff001833),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 0, left: 4),
                          child: VerticalDivider(
                            color: Color(0xffC1C7D0),
                            thickness: 2,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          margin: EdgeInsets.only(left: 10, top: 3),
                          child: TextFormField(
                            onChanged: (a) {
                              isUsernameEmpty = false;
                              setState(() {});
                            },
                            controller: username,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Color(0xffC1C7D0),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .05,
                                ),
                                border: InputBorder.none
                              // filled: true,
                              // fillColor: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Divider(
              color: Color(0xffC1C7D0),
              thickness: 2,
            ),
          ),
          isUsernameEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Username is requirement",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(height: 23),
          Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.phone_android_outlined,
                            color: Color(0xff001833),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 0, left: 4),
                          child: VerticalDivider(
                            color: Color(0xffC1C7D0),
                            thickness: 2,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          margin: EdgeInsets.only(left: 10, top: 3),
                          child: TextFormField(
                            onChanged: (a) {
                              isPhoneEmpty = false;
                              setState(() {});
                            },
                            controller: phone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: "Mobile Phone",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Color(0xffC1C7D0),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .05,
                                ),
                                border: InputBorder.none
                              // filled: true,
                              // fillColor: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Divider(
              color: Color(0xffC1C7D0),
              thickness: 2,
            ),
          ),
          isPhoneEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Phone Number is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(height: 23),
          Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.mail_outline_rounded,
                            color: Color(0xff001833),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 0, left: 4),
                          child: VerticalDivider(
                            color: Color(0xffC1C7D0),
                            thickness: 2,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          margin: EdgeInsets.only(left: 10, top: 3),
                          child: TextFormField(
                            onChanged: (a) {
                              isEmailEmpty = false;
                              setState(() {});
                            },
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Email address",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Color(0xffC1C7D0),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .05,
                                ),
                                border: InputBorder.none
                              // filled: true,
                              // fillColor: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Divider(
              color: Color(0xffC1C7D0),
              thickness: 2,
            ),
          ),
          isEmailEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Email adress is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(height: 23),
          Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.lock_outlined,
                            color: Color(0xff001833),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 0, left: 4),
                          child: VerticalDivider(
                            color: Color(0xffC1C7D0),
                            thickness: 2,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          margin: EdgeInsets.only(left: 10, top: 3),
                          child: TextFormField(
                            onChanged: (a) {
                              isPasswordEmpty = false;
                              setState(() {});
                            },
                            obscureText: isPasswordVisible,
                            controller: password,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                suffixIcon: Container(
                                  child: IconButton(
                                    icon: Icon(
                                      isPasswordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color(0xff5B5B5B),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isPasswordVisible = !isPasswordVisible;
                                      });
                                    },
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Color(0xffC1C7D0),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .05,
                                ),
                                border: InputBorder.none
                              // filled: true,
                              // fillColor: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Divider(
              color: Color(0xffC1C7D0),
              thickness: 2,
            ),
          ),
          isPasswordEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Password is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 55),
            child: Text(
              "By signing up you agree with our Terms of Use",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  letterSpacing: 0.5,
                  color: Color(0xff324A59)),
            ),
          ),

          InkWell(
            onTap: () {
              if (email.text.isNotEmpty && phone.text.isNotEmpty && username.text.isNotEmpty && password.text.isNotEmpty) {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
              } else if (email.text.isEmpty && phone.text.isEmpty && username.text.isEmpty && password.text.isEmpty) {
                isEmailEmpty = true;
                isPasswordEmpty = true;
                isPhoneEmpty = true;
                isUsernameEmpty = true;
                setState(() {});
              } else if (username.text.isEmpty) {
                isUsernameEmpty = true;
                setState(() {});
              } else if (phone.text.isEmpty) {
                isPhoneEmpty = true;
                setState(() {});
              } else if (email.text.isEmpty) {
                isEmailEmpty = true;
                setState(() {});
              } else if (password.text.isEmpty) {
                isPasswordEmpty = true;
                setState(() {});
              }
            },
            child: Container(
              height: 75,
              width: 75,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xff324A59)),
              margin: EdgeInsets.only(left: 305, top: 50),
              child: Container(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60, left: 38),
            child: Row(
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: .5,
                      color: Color(0xffAAAAAA)),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIn()));
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            letterSpacing: .5,
                            color: Color(0xff324A59)),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

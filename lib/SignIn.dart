import 'package:flutter/material.dart';
import 'package:flutter_imtixon/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool isPasswordVisible = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
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
              "Sign in",
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
              "Welcome back",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xffAAAAAA),
                  fontFamily: "Poppins",
                  letterSpacing: .5),
            ),
          ),

          SizedBox(height: 40),
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
                             isPasswordEmpty = false;
                             setState(() {});
                           },
                           obscureText: isPasswordVisible,
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
              "Email is requirement",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(height: 33),
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
                            keyboardType: TextInputType.emailAddress,
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


          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 150),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 0.5,
                  color: Color(0xff324A59)),
            ),
          ),

          InkWell(
            onTap: () {
              if (email.text.isNotEmpty && password.text.isNotEmpty) {
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
              } else if (email.text.isEmpty && password.text.isEmpty) {
                isEmailEmpty = true;
                isPasswordEmpty = true;
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
              margin: EdgeInsets.only(left: 305, top: 140),
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
            margin: EdgeInsets.only(top: 130, left: 38),
            child: Row(
              children: [
                Text(
                  "New member?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: .5,
                      color: Color(0xffAAAAAA)),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUp()));
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Sign up",
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

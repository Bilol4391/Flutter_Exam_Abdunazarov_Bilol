import 'package:flutter/material.dart';
import 'package:flutter_imtixon/SignIn.dart';
import 'package:flutter_imtixon/SignUp.dart';
import 'package:flutter_imtixon/Splash.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

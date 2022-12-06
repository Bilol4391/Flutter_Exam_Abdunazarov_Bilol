import 'package:flutter/material.dart';
import 'package:flutter_imtixon/Coffee.dart';
import 'package:flutter_imtixon/Home.dart';
import 'package:flutter_imtixon/PageOne.dart';
import 'package:flutter_imtixon/SignIn.dart';
import 'package:flutter_imtixon/SignUp.dart';
import 'package:flutter_imtixon/Splash.dart';
import 'package:flutter_imtixon/buySide.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuySide(image: '', title: '', price: '', star: '',),
    );
  }
}

import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context,'home');
    },);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset("assets/images/logo.png",height: 100),
        ),
      ),
    );
  }
}








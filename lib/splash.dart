import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget
{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  int _start = 5;
  bool lot;
  bool is_show=true;
  Color color = Colors.white;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            lot=false;
            color=Color(0xffDBDBDB);
            is_show=false;

          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD46EBF),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'FFMOVES',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'discover all the movements',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        Center(
          child: Container(
            height: 300,
            width: 300,
            child: Visibility(
              visible: is_show,
              child: Lottie.asset(
                'assets/animatedBAR.json',
                repeat: lot,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: color,
            ),
            child: Center(child: Text('Continue',style: TextStyle( fontSize: 30, color: Color(0xffD46EBF)),)),
          ),
          onTap: (){
            if(_start==0)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()),);
              }
          },
        ),

      ],
    ));
  }
}

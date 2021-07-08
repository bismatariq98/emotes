import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'dowload_three.dart';
class Download_Two extends StatefulWidget {
  const Download_Two({Key key}) : super(key: key);

  @override
  _Download_TwoState createState() => _Download_TwoState();
}

class _Download_TwoState extends State<Download_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image(image: NetworkImage('https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')),
          ),
          Text('Martir',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),),
          Text('Downloading...',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),),
          Container(
            height: 100,
            width: 100,
            child: Lottie.asset('assets/animatedBAR.json'),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              width: 100,
              color: Color(0xffD46EBF),
              child: Center(child: Text('Continue',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),)),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Download_Three()),
              );
            },
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/2.2,
              width: MediaQuery.of(context).size.height/2.2,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')),
                border: Border.all(
                    color: Color(0xffD46EBF),
                    width: 10.0
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

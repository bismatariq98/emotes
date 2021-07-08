import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'downloads.dart';
class Download_Three extends StatefulWidget {
  const Download_Three({Key key}) : super(key: key);

  @override
  _Download_ThreeState createState() => _Download_ThreeState();
}

class _Download_ThreeState extends State<Download_Three> {
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
          Text('The download was successful...',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),),
          Container(
            height: 100,
            width: 100,
            child: Icon(CupertinoIcons.hand_thumbsup,size: 40,),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              width: 150,
              color: Color(0xffD46EBF),
              child: Center(child: Text('Go to downloads',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),)),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Downloads()),
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

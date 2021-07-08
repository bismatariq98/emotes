import 'package:flutter/material.dart';

import 'download_two.dart';
class Download_One extends StatefulWidget {
  const Download_One({Key key}) : super(key: key);

  @override
  _Download_OneState createState() => _Download_OneState();
}

class _Download_OneState extends State<Download_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image(image: NetworkImage('https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')),
          ),
          Text('Martir',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),),
          Text('Would you like to download this emote',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.black12,
                  child: Center(child: Text('No',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),)),
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Color(0xffD46EBF),
                  child: Center(child: Text('Yes',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),)),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Download_Two()),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),

          Container(
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
          
        ],
      ),
    );
  }
}

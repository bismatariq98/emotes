import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  const Share({Key key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black12,
            height: 60,
            width: MediaQuery.of(context).size.width / 3,
            child: Row(
              children: [
                Container(
                  child: Image(
                      image: NetworkImage(
                          'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD46EBF), width: 5.0)
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Martir',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Would you like to share this emote',
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          ),
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
                  child: Center(
                      child: Text(
                    'No',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Color(0xffD46EBF),
                  child: Center(
                      child: Text(
                    'Yes',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.2,
            width: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')),
              border: Border.all(color: Color(0xffD46EBF), width: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}

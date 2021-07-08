import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateApp extends StatefulWidget {
  const RateApp({Key key}) : super(key: key);

  @override
  _RateAppState createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD46EBF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Rate this App',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 20.0,
          ),
          SmoothStarRating(
            rating: rating,
            isReadOnly: false,
            size: 50,
            filledIconData: Icons.star,
            halfFilledIconData: Icons.star_half,
            defaultIconData: Icons.star_border,
            starCount: 5,
            allowHalfRating: true,
            spacing: 2.0,
            onRated: (value) {
              print("rating value -> $value");
              // print("rating value dd -> ${value.truncate()}");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              style: TextStyle(fontSize: 18.0, color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Leave your comment here...',
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.black12,
                  child: Center(
                      child: Text(
                    'Later',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.green,
                  child: Center(
                      child: Text(
                    'OK',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: Color(0xffD46EBF),
                      content: const Text('Thank you for your rating and comments, we will take them into account in the next updates.'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('OK'),
                          onPressed: (){

                          },
                          style: TextButton.styleFrom(
                            primary: Colors.green
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.2,
            width: MediaQuery.of(context).size.height/2.2,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png')),
              border: Border.all(
                  color: Colors.white,
                  width: 10.0
              ),
            ),
          )
        ],
      ),
    );
  }
}

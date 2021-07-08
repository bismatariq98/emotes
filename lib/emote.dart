import 'package:emotes/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'download_one.dart';

class Emote_Screen extends StatefulWidget {
  const Emote_Screen({Key key}) : super(key: key);

  @override
  _Emote_ScreenState createState() => _Emote_ScreenState();
}

class _Emote_ScreenState extends State<Emote_Screen> {
  Widget categoriesContainer({@required String image}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      appBar: AppBar(
        backgroundColor: Color(0xffDBDBDB),
        iconTheme: IconThemeData(
          color: Colors.black45,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Container(
                decoration: new BoxDecoration(color: Colors.white),
                height: 240,
                child: Stack(
                  children: <Widget>[
                    Image.network(
                        'https://kaleidousercontent.com/removebg/designs/4621cf76-fb41-4177-bc33-f12a67816592/thumbnail_image/change-background-thumbnail.png',
                        fit: BoxFit.fill),
                    Positioned(
                      left: 20,
                      top: 50, //give the values according to your requirement
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Share()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
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
              width: MediaQuery.of(context).size.height / 1.9,
              decoration: BoxDecoration(
                color: Color(0xffD46EBF),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                  child: Text(
                'Download',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              )),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Download_One()),
              );
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Recommended:',
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
                categoriesContainer(
                    image:
                        'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Downloads extends StatefulWidget {
  const Downloads({Key key}) : super(key: key);

  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  Widget categoriesContainer({@required String image, @required String name}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 70,
          color: Color(0xffD46EBF),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      appBar:AppBar(
          backgroundColor: Color(0xffDBDBDB),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Row(
            children: [
              Text('Downloads',style: TextStyle(color: Colors.black),),
            ],
          )
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: [
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
            categoriesContainer(image: 'https://doctoritas.com/wp-content/uploads/2016/03/blank-person.png',name: 'Martir'),
          ]
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'downloads.dart';
import 'emote.dart';
import 'favourite.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  Widget bottomContainer({@required int price, @required String name}) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color(0xffD46EBF),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: 25,
              color: Color(0xffDBDBDB),
                child: Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'))),
          ),
          Spacer(
          ),
          Expanded(
            child:  Text(
              name,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              "\$$price",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDBDBDB),
        appBar: AppBar(
          backgroundColor: Color(0xffDBDBDB),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xffD46EBF),
          ),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children:  <Widget>[
                DrawerHeader(
                    child: Text(''),
                ),
                ListTile(
                  leading: Icon(Icons.border_all),
                  title: Text('All emotes'),
                  onTap: (){

                  },
                ),
                ListTile(
                  leading: Icon(Icons.file_download),
                  title: Text('Downloads'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Downloads()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favorites'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Favourites()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    body: Column(
        children: [
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
      child: TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Color(0xffDBDBDB),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
      ),
    ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height/1.4,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                        return bottomContainer(price: 12,name: 'Welcome');
                      },
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Emote_Screen()),
                  );
                },
              ),
            ),
          ),
      ],
    ),
    );
  }
}

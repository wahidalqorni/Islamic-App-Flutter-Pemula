import 'package:flutter/material.dart';
import 'package:submission_flutter/listamalan.dart';
import 'package:submission_flutter/listsahabat.dart';
import 'package:submission_flutter/listteladan.dart';
import 'package:submission_flutter/quotes.dart';
import 'package:submission_flutter/rukuniman.dart';
import 'package:submission_flutter/rukunislam.dart';

class Home extends StatelessWidget {
  String value;
  Home({this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.green[600],
                padding: EdgeInsets.all(12),
                // margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Islamic App Flutter",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    //padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Text(
                        'Selamat datang, ' + value + '!',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Ini adalah aplikasi sederhana yang berisi informasi mengenai Islam. Silahkan klik menu-menu di bawah sesuai dengan informasi yang diinginkan.', style: TextStyle(
                          fontFamily: 'Roboto', fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(21),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  // crossAxisSpacing: 2,
                  // mainAxisSpacing: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListTeladan();
                        }));
                      },
                      child: Menu(
                        icon: Icons.person,
                        coloricon: Colors.green,
                        text: '5 Teladan Rosul',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListSahabat();
                        }));
                      },
                      child: Menu(
                        icon: Icons.people,
                        coloricon: Colors.blue,
                        text: '10 Sahabat Nabi',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListAmalan();
                        }));
                      },
                      child: Menu(
                        icon: Icons.book,
                        coloricon: Colors.orange,
                        text: '8 Amalan Sunnah',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RukunIslam();
                        }));
                      },
                      child: Menu(
                        icon: Icons.assignment,
                        coloricon: Colors.purple,
                        text: 'Rukun Islam',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RukunIman();
                        }));
                      },
                      child: Menu(
                        icon: Icons.brightness_4,
                        coloricon: Colors.indigo,
                        text: 'Rukun Iman',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Quotes();
                        }));
                      },
                      child: Menu(
                        icon: Icons.comment,
                        coloricon: Colors.pink,
                        text: 'Quotes',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green[600],
              width: MediaQuery.of(context).size.width,
              height: 62,
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final IconData icon;
  final Color coloricon;
  final String text;

  Menu({this.icon, this.coloricon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: coloricon.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              width: 50,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  icon,
                  color: coloricon,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Text(text, style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('Quotes Islami', style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green[600],
      ),
      body: Container(
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/quote1.jpg', fit: BoxFit.fill,),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/quote2.jpg', fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/quote3.jpg', fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/quote4.jpg', fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/quote5.jpg', fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            )
    );
  }
}

import 'package:flutter/material.dart';

class RukunIman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('Rukun Iman', style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
              child: Container(
          height: 500,
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('images/rukuniman.jpg', fit: BoxFit.fill,),
                    ),
                  ),
                ),
      ),
      );
  }
}

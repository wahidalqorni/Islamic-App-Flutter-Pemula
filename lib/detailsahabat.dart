import 'package:flutter/material.dart';
import 'package:submission_flutter/model/sabahat_list.dart';

class DetailSahabat extends StatelessWidget {
  final SahabatList sahabat;

  DetailSahabat({@required this.sahabat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text(
          sahabat.nama,
          style: TextStyle(fontSize: 18, fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              // height: 180,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          sahabat.nama,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text(
                          sahabat.deskripsi,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

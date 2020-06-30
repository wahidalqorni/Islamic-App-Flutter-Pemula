import 'package:flutter/material.dart';
import 'package:submission_flutter/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Assalamu\'alaikum',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Siapa namamu?',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Hero(
                                tag: 'My App',
                                child: CircleAvatar(
                                  backgroundColor: Colors.green[200],
                                  child: Icon(
                                    Icons.people,
                                    color: Colors.green,
                                  ),
                                  radius: 48.0,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: TextFormField(
                                // ignore: missing_return
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Hey Kenalkan diri dulu ya!';
                                  }
                                },
                                keyboardType: TextInputType.text,
                                onChanged: (text) {
                                  value = text;
                                },
                                autofocus: false,
                                decoration: InputDecoration(
                                  hintText: 'Ketikkan Namamu di sini',
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: FlatButton(
                                color: Colors.green,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                onPressed: () {
                                  _formKey.currentState.validate()
                                      ? Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                          builder: (context) =>
                                              Home(value: value),
                                        ))
                                      : print('Ups!');
                                  //print('oke');
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

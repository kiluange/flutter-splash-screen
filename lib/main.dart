import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplasScreen',
      theme: ThemeData(),
      home: new SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {
      super.initState();
      Timer(Duration(seconds: 5), ()=>print('CallBack function'));
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(250, 114, 104, 1),
        ),
        Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.pets,
                        size: 48.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'Nonono',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.only(top: 16,bottom: 32),
                child: Text(
                  'No non nonon nono \nnono non no nononon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

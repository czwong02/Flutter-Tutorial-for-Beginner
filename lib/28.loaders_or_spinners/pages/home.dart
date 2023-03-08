import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                }, 
                icon: Icon(Icons.edit_location)),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    // data['location'],
                    'Berlin',
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                    // data['time'],
                    '1:11pm',
                    style: TextStyle(
                      fontSize: 66.0,
                    ),
                  )
            ],),
        ))
    );
  }
}
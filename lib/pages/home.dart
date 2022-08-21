import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 180.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                child: Row(children: <Widget>[
                  Text('Choose Location'),
                  Icon(Icons.arrow_forward),
                ]
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

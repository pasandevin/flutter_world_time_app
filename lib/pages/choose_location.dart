import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  void initState() {
    super.initState();
    print("initState ran");
  }
  @override
  Widget build(BuildContext context) {
    print("build ran");
    return Scaffold(
      body: Text('ChooseLocation'),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}

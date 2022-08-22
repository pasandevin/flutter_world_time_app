import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //following is an example for asynchronous code
  // void getData() async {
  //   // simulate network request to get username
  //   String userName = await Future.delayed(Duration(seconds: 3), () {
  //     return 'Devin';
  //   });
  //
  //   // simulate network request to get bio from the username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return "Pizza lover";
  //   });
  //   print('$userName - $bio');
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  //   print('checking if this is called');
  // }

  @override
  Widget build(BuildContext context) {

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

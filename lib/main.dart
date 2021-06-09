import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/home/Homebody.dart';


void main() {
  runApp(Redisign());
}

class Redisign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Body(),
     ),
    );
  }

}
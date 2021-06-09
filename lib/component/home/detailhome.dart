import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/detail/detail.dart';
import 'package:redisign_flutter/constants.dart';

class Detail extends StatefulWidget {
    @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(children: <Widget>[
                  Container(
                    width: 40,
                height:40,
              child: IconButton(
                icon: Icon(Icons.cancel),
                color: KprimaryColor,
                onPressed: () {}
              ),
             ),
            ],
           ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0)
            ),
          Container(
            child: Column(
              children: [
                ItemDetail(),
              ],
            ),
          ),
         ],
        ),
       ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/detail/detail.dart';
import 'package:redisign_flutter/component/detail/listbaju.dart';
import 'package:redisign_flutter/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemDetail(),
            ),
          );
        },
        child: Icon(
          Icons.settings_input_component_rounded
          ),
        backgroundColor: KbackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/toko.jpeg'),
                    ],
                  ),
                ),
           Positioned(
              bottom: 200,
              left: -45,
              right: -45,
              top: 200,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                padding:EdgeInsets.symmetric(horizontal: 100),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(50),
                ),
              child: Row(
                children: [
                  Expanded(
                    child: new TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 120, 40),
                    child: Text(
                      'Popular Outfit',
                         style: TextStyle(
                           fontSize: 28,
                           fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                            shadows: <Shadow>[
                               Shadow(
                                 offset: Offset(3.0, 3.0),
                                 blurRadius: 3.0,
                                 color: Colors.grey,
                              ),
                            ]
                          ),
                         ),
                       ),
                      ItemBaju(),
                     ],
                    ),
                   ),
                 ]
                ),
              ),
             ],
            ),
           ),
          );
         }
       }
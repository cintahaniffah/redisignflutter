import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/detail/listbaju.dart';
import 'package:redisign_flutter/component/home/detailhome.dart';

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
              builder: (context) => Detail(),
            ),
          );
        },
        child: Icon(
          Icons.settings_input_component_rounded
          ),
        backgroundColor: Colors.grey,
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
                      Image.asset('assets/images/gmbr1.jpg'),
                    ],
                  ),
                ),
           Positioned(
              bottom: 70,
              left: 40,
              right: 40,
              top: 60,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding:EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new TextField(
                       onChanged: (value) {},
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.search, color: Colors.black,),
                         hintText: 'Search',
                         hintStyle: TextStyle(
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
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 120, 40),
                    child: Text(
                      'Popular Outfit',
                         style: TextStyle(
                           fontSize: 27,
                           fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
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

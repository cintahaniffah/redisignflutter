import 'package:flutter/material.dart';
import 'package:redisign_flutter/constants.dart';

class KetDetail extends StatelessWidget {
  const KetDetail({ 
    Key key, 
    this.judul, 
    this.gambar, 
    this.harga,
     }) : super(key: key);

     final String judul;
     final String gambar;
     final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin : EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(gambar)
                ),
              borderRadius: BorderRadius.circular(50),
          ),
         ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  judul,
                  style: TextStyle(
                    color: KprimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Container(
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 5),
                       child: Icon(
                         Icons.star,
                         color: KprimaryColor,
                       ),
                     ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          harga,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: KprimaryColor, 
                            ),
                        ),
                       ),
                     ],
                    ),
                   ),
                 ],
                ),
              )
             ],
           ),
         );
       }
      }
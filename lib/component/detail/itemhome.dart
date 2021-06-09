import 'package:flutter/material.dart';

class Listbaju extends StatelessWidget {
  const Listbaju({ 
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
          height: 50,
          width: 50,
          margin: EdgeInsets.only(
          top: 30,
          left:30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(gambar),
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(judul,
                  style : TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 15, 0, 20),
            child: Text(
              harga,
               textAlign: TextAlign.left,
               style: TextStyle(
                 fontSize: 14,
                 color: Colors.grey.shade700,
               ),
              )
             )
            ],
           ),
         )
        ]
       ),
    );
  }
}
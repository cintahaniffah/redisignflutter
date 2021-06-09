import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/detail/itemhome.dart';

class ItemBaju extends StatelessWidget {
  const ItemBaju({ 
   Key key 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
        Listbaju(
          gambar:'assets/images/gmbr5.jpeg',
          judul: 'Dressbrown',
          harga: ' Rp.150.000,00',
        ),
        Listbaju(
          gambar: 'assets/images/gmbr6.png',
          judul : 'Dress Spring',
          harga : 'Rp.350.000,00',
        ),
        Listbaju(
          gambar:'assets/images/gmbr7.png',
          judul: 'Summer Dress',
          harga: 'Rp. 390.000,00',
        ),
      ],
      ),
    );
  }
}
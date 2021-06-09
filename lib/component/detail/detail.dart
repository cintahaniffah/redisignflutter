import 'package:flutter/material.dart';
import 'package:redisign_flutter/component/detail/ketdetail.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({ 
   Key key 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
        KetDetail(
          gambar:'assets/images/gmbr5.jpeg',
          judul: 'Dressbrown',
          harga: ' Rp.150.000,00',
        ),
      ],
      ),
    );
  }
}
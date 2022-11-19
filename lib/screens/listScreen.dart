

import 'package:examen_movil/repositories/cart_data.dart';
import 'package:examen_movil/widgets/CartWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListScreen extends StatelessWidget {
     final Backend _backend;
   /*    Backend().getEmails(); */
  const ListScreen({Key? key, required Backend backend}) : _backend = backend, super(key: key);

  @override

  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      /*getEmails*/
      body:ListView(
        //recorrer la lista de emails del EmailWidget por medio de un map
        children: _backend.getCarts().map((cart) => CartWidget(cart: cart)).toList(),
      ),
    );
  }

}
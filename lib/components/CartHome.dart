


import 'package:examen_movil/repositories/cart_data.dart';
import 'package:examen_movil/screens/listScreen.dart';
import 'package:flutter/material.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Baque Juleidy';
    return Scaffold(
      appBar: AppBar(
        title: Text('$name       8voA'),
        centerTitle: true,
      ),
      body: ListScreen(backend: Backend()),
    );
  }
}

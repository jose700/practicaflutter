

import 'package:examen_movil/models/cart.dart';
import 'package:examen_movil/screens/DetailScreen.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final Cart cart;
  const CartWidget({Key? key, required this.cart}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(  
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:  Expanded(
             child: Column(
               children: [
                 GestureDetector(
                    onTap: () {//obtenenemos los datos por medio de la id
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(cart: cart, context:context),
                        ),
                      );
                    },
                    onLongPress: () {
                      print('Long Press');
                    },
                    child: Dismissible(
                     
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        print('Dismissed');
                  },
                  child: Container(
                  padding: const EdgeInsets.all(8),
            child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //imagen
                          Image.network(
                            cart.imagen,
                            fit: BoxFit.cover,
                            height: 100, width: 100,
                          ),
                          Text(
                            cart.modelo,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Text('USD: \$${
                          cart.precio}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ]
                    ),
                  ],
            ),
          ),
        ),
      ),
    ],
  )
  )
  ));  
  }
}
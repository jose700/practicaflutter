

import 'package:examen_movil/models/cart.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  
    final Cart cart;
  
    final BuildContext context;
  
    const DetailScreen({Key? key, required this.cart, required this.context}) : super(key: key);
  
    @override
  
    _DetailScreenState createState() => _DetailScreenState();
  
  }

class _DetailScreenState extends State<DetailScreen> {
    @override
    Widget build(BuildContext context) {
  return Scaffold(
  //SliverAppBar
  body: CustomScrollView(
    slivers: [
      SliverAppBar(
        //ocultar icono de volver
        automaticallyImplyLeading: false,
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
        
          background: Image.network(
            widget.cart.imagen,
            fit: BoxFit.cover,
            height: 350,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Modelo' + '  ' +
                          widget.cart.modelo,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Marca: ' + '  ' + 
                          widget.cart.marca,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Año : ' + '  '+
                          widget.cart.anio,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Entrada: \$${
                          widget.cart.entrada}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Precio: \$${widget.cart.precio}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            )),
                        const SizedBox(height: 10),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
            child: TextButton(
                        //color del boton
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.red,
                          onSurface: Colors.grey,
                        ),
                        onPressed: () {
                           Navigator.pop(context);      
                         },
                        child: const Text('Done'),
               ),
            ),
          ],
        ),
      ),
    ],
  ),
  );
    }
}
import 'package:flutter/material.dart';
import 'package:food_bit_app/app/components/custom_header.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CustomHeader(
            title: 'Cart',
            quantity: 0,
            internalScreen: false,
          )
        ],
      ),
    );
  }
}

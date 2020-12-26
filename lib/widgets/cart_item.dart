import 'dart:html';

import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final String title;
  final int quantity;
  CartItem({this.id, this.quantity, this.price, this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Text('₹/$price'),
          ),
          title: Text(title),
          subtitle: Text('₹${(price * quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List get items {
    return [..._items];
  }
}

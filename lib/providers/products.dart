import 'package:flutter/material.dart';
import 'product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';

class Products with ChangeNotifier {
  String authToken;
  String userId;
  List<Product> _items = [];
  Products(this.authToken, this._items, this.userId);
  List<Product> get items {
    return [..._items];
  }
  //used getter to make it accessible outside this class and cannot change outside this class cause we want to use notifylisteners()

  List<Product> get showFavouritesOnly{
    return _items.where((proditem) => proditem.isFavourite).toList();
  }  
  
  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  Future<void> addProduct(Product product) async {
    final url =
        'https://shopapp-12cb0-default-rtdb.firebaseio.com/products.json?auth=$authToken';

    try {
      final response = await http.post(url,
          body: json.encode({
            'title': product.title,
            'description': product.description,
            'imageUrl': product.imageUrl,
            'price': product.price,
            'creatorId' : userId
          })); //.catchError is not used here because if its used here .then will execute after handling the error

      final newProduct = Product(
          description: product.description,
          id: json.decode(response.body)['name'],
          imageUrl: product.imageUrl,
          price: product.price,
          title: product.title);
      _items.add(newProduct);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
      //used this to throw another error so that another catchError can be used in EditProductScreen
    }
  }

  Future<void> updateProduct(String id, Product newProduct) async {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    final url =
        'https://shopapp-12cb0-default-rtdb.firebaseio.com/products/$id.json?auth=$authToken';
    await http.patch(url,
        body: json.encode({
          'title': newProduct.title,
          'description': newProduct.description,
          'imageUrl': newProduct.imageUrl,
          'price': newProduct.price,
        }));
    _items[prodIndex] = newProduct;
    notifyListeners();
  }

  Future<void> deleteProduct(String id) async {
    final url =
        'https://shopapp-12cb0-default-rtdb.firebaseio.com/products/$id.json?auth=$authToken';
    final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
    var existingProduct = _items[existingProductIndex];
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
    final response = await http.delete(url).then((response) {
      if (response.statusCode >= 400) {
        _items.insert(existingProductIndex, existingProduct);
        notifyListeners();
        throw HttpException('Could not delete product.');
      }
      existingProduct = null;
    });
  }

  Future<void> fetchAndSetProduct([bool filterByUser=false]) async {
    final filterString = filterByUser? 'orderBy="creatorId"&equalTo="$userId"' : '';
    var url =
        'https://shopapp-12cb0-default-rtdb.firebaseio.com/products.json?auth=$authToken&$filterString';
    List<Product> loadedProducts = [];
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      url =
          'https://shopapp-12cb0-default-rtdb.firebaseio.com/userFavourites/$userId.json?auth=$authToken';
      final favouriteResponse = await http.get(url);
      final favouriteData = json.decode(favouriteResponse.body);
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(Product(
          id: prodId,
          description: prodData['description'],
          imageUrl: prodData['imageUrl'],
          isFavourite:
              favouriteData == null ? false : favouriteData[prodId] ?? false,
          title: prodData['title'],
          price: prodData['price'],
        ));
      });
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {}
  }
}

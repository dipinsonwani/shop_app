import 'package:flutter/material.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/screens/cart_screen.dart';
import './screens/edit_product_screen.dart';
import './providers/products.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import 'package:provider/provider.dart';
import './screens/orders_screen.dart';
import './screens/user_products_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          //use create only when you create new instance of an object
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple, accentColor: Colors.deepOrange),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName : (ctx) => CartScreen(),
          OrdersScreen.routeName : (ctx) => OrdersScreen(),
          UserProductsScreen.routeName : (ctx) => UserProductsScreen(),
          EditProductScreen.routeName : (ctx) => EditProductScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App"),
      ),
      body: Center(child: Text("Items!")),
    );
  }
}

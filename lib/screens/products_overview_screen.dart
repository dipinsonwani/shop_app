import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FilterOptions { Favourites, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
            },
            itemBuilder: (ctx) => [
              PopupMenuItem(
                child: Text("Only Favourites"),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text("Show all"),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}

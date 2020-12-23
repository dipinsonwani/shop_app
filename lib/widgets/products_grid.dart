import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsdata = Provider.of<Products>(context);
    final products = productsdata.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      //using nested provider
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        //use value and not 'create' when the object is already existing
          value: products[i],
          child: ProductItem(
              // products[i].id, products[i].title, products[i].imageUrl
              )
              ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}

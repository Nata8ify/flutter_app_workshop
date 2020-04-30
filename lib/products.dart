import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/product.dart';

class Product extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  const Product(this.products, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductList,
      itemCount: products.length,
    );
  }

  Widget _buildProductList(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () {
                  Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductDetailPage(
                              products[index]['title'],
                              products[index]['image']))).then((isDelete) {
                    print('isDelete $isDelete');
                    if (isDelete) {
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

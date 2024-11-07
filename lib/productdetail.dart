import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map<String, String> product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(product['name']!, style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(product['image']!, width: 200)),
            SizedBox(height: 20),
            Text(product['name']!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            Text('\$${product['price']}', style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text('Add to Cart', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

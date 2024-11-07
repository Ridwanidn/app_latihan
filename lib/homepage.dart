import 'package:app_latihan/input.dart';
import 'package:flutter/material.dart';
import 'package:app_latihan/productdetail.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'iPhone 14', 'image': 'assets/iphone.png', 'price': '999'},
    {'name': 'MacBook Pro', 'image': 'assets/macbook.png', 'price': '1299'},
    // Tambahkan produk lain di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Apple Products', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Halo semuanya, ini adalah aplikasi Apple. Ada berbagai macam produk Apple di sini.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetail(product: products[index])),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(products[index]['image']!, width: 100),
                      SizedBox(height: 8),
                      Text(products[index]['name']!, style: TextStyle(fontSize: 16, color: Colors.black)),
                      Text('\$${products[index]['price']}', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) {
            return InputFormPage();
          },));
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

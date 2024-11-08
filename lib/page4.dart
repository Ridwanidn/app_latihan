import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Iphone 11 pro max', 'info': '11.000.000.000'},
    {'name': 'Iphone 12 pro max', 'info': '12.000.000.000'},
    {'name': 'Iphone 13 pro max', 'info': '13.000.000.000'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Ringkasan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.mobile_screen_share_sharp, color: Colors.black),
              title: Text(users[index]['name']!, style: TextStyle(fontSize: 18)),
              subtitle: Text(users[index]['info']!, style: TextStyle(color: Colors.grey)),
            ),
          );
        },
      ),
    );
  }
}

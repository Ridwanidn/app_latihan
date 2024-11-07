import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'John Doe', 'info': 'Mahasiswa Teknik Informatika'},
    {'name': 'Jane Smith', 'info': 'Desainer Grafis'},
    {'name': 'Michael Johnson', 'info': 'Data Analyst'},
    // Tambahkan data contoh lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ringkasan',
          style: TextStyle(color: Colors.white),
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
              leading: Icon(Icons.person, color: Colors.black),
              title: Text(users[index]['name']!, style: TextStyle(fontSize: 18)),
              subtitle: Text(users[index]['info']!, style: TextStyle(color: Colors.grey)),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context); // Kembali ke Halaman 2 (Homepage)
            },
            backgroundColor: Colors.black,
            child: Icon(Icons.home),
            tooltip: 'Kembali ke Homepage',
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/formInput')); // Kembali ke Halaman 3 (Formulir)
            },
            backgroundColor: Colors.black,
            child: Icon(Icons.edit),
            tooltip: 'Kembali ke Formulir',
          ),
        ],
      ),
    );
  }
}

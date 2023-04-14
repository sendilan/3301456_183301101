import 'package:flutter/material.dart';
class BookDetailPage extends StatelessWidget {
  final String kitapAdi;
  final String yazar;
  final String image;
  final String tanim;

  BookDetailPage({
    required this.kitapAdi,
    required this.yazar,
    required this.image,
    required this.tanim,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(kitapAdi),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Image.asset(
                  image,
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
                Text(
                  'Kitap Adı: $kitapAdi',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Yazar: $yazar',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Tanım: $tanim',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),

      );
  }
}
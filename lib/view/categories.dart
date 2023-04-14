import 'package:flutter/material.dart';
class BookCategoriesPage extends StatefulWidget {
  const BookCategoriesPage ({Key? key}) : super(key: key);

  @override
  State<BookCategoriesPage> createState() => _BookCategoriesPageState();
}

class _BookCategoriesPageState extends State<BookCategoriesPage> {

  final List<Map<String, String?>> categories = [
    {
      'kategoriAdi': 'Korku',
    },
    {
      'kategoriAdi': 'Klasik',
    },
    {
      'kategoriAdi': 'Romantik',
    },
    {
      'kategoriAdi': 'Aksiyon',
    },

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.book_online),
          )
        ],
        title: Text(
          'KATEGORİLER',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.blueGrey.shade50,
              ),
              child: ListTile(
                  title: Center(
                      child: Text(
                          categories[index]['kategoriAdi'].toString())),
                  leading:Image.asset('assets/png/kitap.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  )),
            ),
          );
        },
      ),
    );
  }
}

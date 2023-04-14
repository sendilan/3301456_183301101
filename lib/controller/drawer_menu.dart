import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitap/view/about.dart';
import 'package:kitap/view/note_page.dart';
import 'package:kitap/view/categories.dart';
import 'package:kitap/view//home_page.dart';

class DrawerMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  Text(
                    "Kitap Kurdu",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Anasayfa'),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                builder: (context) => HomePage(firstName: '', lastName: ''),
            )
            );
            },
        ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Kategoriler'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>BookCategoriesPage(),
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Hakkında'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>AboutPage(),
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.note_add),
            title: Text('Notlarım'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>NotePage(),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}
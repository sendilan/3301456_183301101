import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as matematik;

Color rastgele() {
  return Color.fromARGB(
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255));
}

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: rastgele(),
        appBar: AppBar(
          backgroundColor: rastgele(),
          title: Text("Hakkında"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Card(
              color: Colors.greenAccent,
              margin: EdgeInsets.only(right: 50, left: 50, bottom: 5),
              child: ListTile(
                title: Text(
                  "İsim:",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Dilan Şen",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            //Drawer(),
            Card(
              color: Colors.greenAccent,
              margin: EdgeInsets.only(right: 50, left: 50, bottom: 5),
              child: ListTile(
                title: Text(
                  "GitHub:",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "github.com/sendilan",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            //Drawer(),
            Card(
              color: Colors.greenAccent,
              margin: EdgeInsets.only(right: 50, left: 50),
              child: ListTile(
                title: Text(
                  "Bilgilendirme: ",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301101 numaralı Dilan ŞEN tarafından 4 Nisan 2022 günü yapılmıştır.",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontStyle: FontStyle.italic),
                ),
              ),
            )
          ],
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:yemek_tarifleri/hakkinda.dart';
import 'package:yemek_tarifleri/tarif_liste.dart';
import 'package:yemek_tarifleri/utils/login_page.dart';
import 'dart:math' as matematik;

import 'tarif_detay.dart';

void main() => runApp(MyApp());

Color rastgele() {
  return Color.fromARGB(
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarif Defteri",
      debugShowCheckedModeBanner: false,
      initialRoute: "/loginSayfasi",
      routes: {
        "/loginSayfasi": (context) => LoginSayfasi(),
        "/tarifListesi": (context) => TarifListesi(),
        "/hakkinda": (context) => Hakkinda(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name!.split("/");
        if (pathElemanlari[1] == "tarifDetay") {
          return MaterialPageRoute(
              builder: (context) => TarifDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

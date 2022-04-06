import 'package:flutter/material.dart';
import 'dart:math' as matematik;

import 'models/tarif.dart';
import 'utils/strings.dart';

Color rastgele() {
  return Color.fromARGB(
    matematik.Random().nextInt(255),
    matematik.Random().nextInt(255),
    matematik.Random().nextInt(255),
    matematik.Random().nextInt(255),
  );
}

class TarifListesi extends StatelessWidget {
  static List<Tarif> tumTarifler = [];

  @override
  Widget build(BuildContext context) {
    tumTarifler = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("Tarif Defteri"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info),
              highlightColor: rastgele(),
              onPressed: () {
                Navigator.pushNamed(context, "/hakkinda");
              }),
        ],
      ),
      body: listeyiHazirla(),
    );
  }

  List<Tarif> veriKaynaginiHazirla() {
    List<Tarif> tarifler = [];

    for (int i = 0; i < 11; i++) {
      String kucukResim =
          Strings.TARIF_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim =
          Strings.TARIF_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Tarif eklenecekTarif = Tarif(
          Strings.TARIF_ADLARI[i],
          Strings.TARIF_SURELERI[i],
          Strings.TARIF_YAPILISI[i],
          kucukResim,
          buyukResim);
      tarifler.add(eklenecekTarif);
    }

    return tarifler;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirTarif(context, index);
      },
      itemCount: tumTarifler.length,
    );
  }

  Widget tekSatirTarif(BuildContext context, int index) {
    Tarif oanListeyeEklenenTarif = tumTarifler[index];

    return Container(
      color: rastgele(),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () => Navigator.pushNamed(context, "/tarifDetay/$index"),
            leading: Image.asset(
              "assets/images/" + oanListeyeEklenenTarif.tarifKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              oanListeyeEklenenTarif.tarifAdi,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.pink.shade500),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                oanListeyeEklenenTarif.tarifBuyukResim,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}

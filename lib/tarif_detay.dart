import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'models/tarif.dart';
import 'tarif_liste.dart';

class TarifDetay extends StatefulWidget {
  int gelenIndex;

  TarifDetay(this.gelenIndex);

  @override
  _TarifDetayState createState() => _TarifDetayState();
}

class _TarifDetayState extends State<TarifDetay> {
  late Tarif secilenIndex;
  Color baskinRenk = Colors.teal;
  late PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
    secilenIndex = TarifListesi.tumTarifler[widget.gelenIndex];
    baskinRengiBul();
  }

  void baskinRengiBul() {
    Future<PaletteGenerator> fPaletGenerator =
        PaletteGenerator.fromImageProvider(
            AssetImage("assets/images/" + secilenIndex.tarifSuresi));

    fPaletGenerator.then((value) {
      paletteGenerator = value;
      debugPrint(
          "secilen renk :" + paletteGenerator.dominantColor!.color.toString());

      setState(() {
        baskinRenk = paletteGenerator.dominantColor!.color;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                "assets/images/" + secilenIndex.tarifSuresi,
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 250,
            pinned: true,
            backgroundColor: baskinRenk,
            primary: true,
            centerTitle: true,
            title: Text(secilenIndex.tarifAdi + " Tarif Yapilisi "),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.brown[100],
              margin: EdgeInsets.all(6),
              child: SingleChildScrollView(
                child: Text(
                  secilenIndex.tarifDetay,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontStyle: FontStyle.values[001],
                      height: 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

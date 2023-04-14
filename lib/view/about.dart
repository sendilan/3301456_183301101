import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text('HAKKINDA'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
      children:<Widget> [
        Card(
          color: Colors.blueGrey,
          margin: EdgeInsets.only(right: 50, left: 50, bottom: 5),
          child: ListTile(
            title: Text(
              "İsim:",
              style: TextStyle(fontSize: 20,
                color:Colors.white70,),

            ),
            subtitle: Text(
              "Dilan Şen",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                 ),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          margin: EdgeInsets.only(right: 50, left: 50, bottom: 5),
          child: ListTile(
            title: Text(
              "Hakkında:",
              style: TextStyle(fontSize: 20,
                color:Colors.white70,),

            ),
            subtitle: Text(
              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301101 numaralı Dilan ŞEN tarafından 12 Nisan 2023 günü yapılmıştır.",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white70,
              ),
            ),
          ),

        ),
      ],
      ),
    );
  }
}

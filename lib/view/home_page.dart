import 'package:flutter/material.dart';
import 'package:kitap/controller//book_details.dart';
import 'package:kitap/controller/drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String firstName, required String lastName});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String?>> books = [
    {
      'kitapAdi': 'Muhteşem Gatsby',
      'yazar': 'F. Scott Fitzgerald',
      'image': 'assets/png/gatsby.jpg',
      'tanim':
      ' Amerikalı yazar F. Scott Fitzgerald tarafından kaleme alınmış bir roman. İlk basımı 10 Nisan 1925 te yapılmıştır. Roman,1922 yazında müreffeh Long Island daki hayali West Egg kasabasında,romanın ana karakteri,gizemli genç milyoner Jay Gatsby ile saplantılı şekilde âşık olduğu Daisy Buchanan arasında geçen olayları, bir başka roman karakterinin gözünden anlatır. F.Scott Fitzgerald ın baş yapıtıdır.Romanda çöküş, toplumsal karışıklık,idealizm ve ölçüsüzlük temalarıyla Caz Çağı tasvir edilir, Amerika nın 20 li yılları eğitici bir biçimde ortaya konur.'
    },
    {
      'kitapAdi': '1984',
      'yazar': 'George Orwell',
      'image': 'assets/png/1984.png',
      'tanim':
      ' İngiliz yazar George Orwell tarafından kaleme alınmış olan alegorik, distopik ve politik bir romandır. Romanın hikâyesi distopik bir dünyada geçer. Distopya romanlarının en ünlülerindendir. Özellikle kitapta tanımlanan Big Brother kavramı günümüzde de sıklıkla kullanılmaktadır. Aynı zamanda kitapta geçen "düşünce polisi" gibi kavramları da yazar George Orwell günümüze kazandırmıştır.'
    },
    {
      'kitapAdi': 'Bülbülü Öldürmek',
      'yazar': 'Harper Lee',
      'image': 'assets/png/bulbulu_oldurmek.jpg',
      'tanim':
      'Bülbülü Öldürmek, ABD li yazar Harper Lee nin 1960 ta yayınlanan ve Pulitzer Ödülü kazanan romanıdır. Yayınlandığı dönemde büyük bir başarı kazanarak, modern Amerikan Edebiyatı nın klasikleri arasına girdi. Roman, yazarın 1936 yılında, on yaşındayken yaşadığı bir olayı temel almaktadır. '
    },
    {
      'kitapAdi': 'Yüzyıllık Yalnızlık',
      'yazar': 'Gabriel Garcia Marquez',
      'image': 'assets/png/yuzyillik_yalnizlik.jpeg',
      'tanim':
      ' Yüzyıllık Yalnızlık; Buendia ailesinin, yapılan bir büyü sonucu akraba evliliği nedeniyle 100 yıl süren bir lanetle yaşamalarını konu ediniyor.'
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      drawer:DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.book_online),
          )
        ],
        title: Text(
          'KİTAP KURDU',
          style: TextStyle(fontSize: 24),
        ),
          centerTitle: true,
      ),
      body: ListView.builder(

        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.asset(
                  books[index]['image']!,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  onTap: () =>{
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => BookDetailPage(
                        kitapAdi: books[index]['kitapAdi']!,
                        yazar: books[index]['yazar']!,
                        image: books[index]['image']!,
                        tanim: books[index]['tanim']!,
                      ),
                    ),),
                  },
                  title: Text(
                    books[index]['kitapAdi']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text(
                    books[index]['yazar']!,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
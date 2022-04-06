import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginSayfasi extends StatefulWidget {
  const LoginSayfasi({Key? key}) : super(key: key);

  @override
  _LoginSayfasiState createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 36, right: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "Tarif Defteri",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.pink.shade600,
                ),
              ),
              SizedBox(height: 120),
              TextField(
                controller: kullaniciAdi,
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: sifre,
                decoration: InputDecoration(
                  hintText: "Şifre",
                ),
              ),
              SizedBox(height: 120),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  child: Text("Giriş Yap"),
                  onPressed: () {
                    if (kullaniciAdi.text == "dilansen" &&
                        sifre.text == "123456") {
                      Navigator.pushNamed(context, "/tarifListesi");
                    } else {
                      debugPrint("sdgfsdg");
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Yanlış kullanıcı adı veya şifre"),
                            content: Text("Tekrar deneyiniz..."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Tekrar Dene"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('TARİF DEFTERİ'),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: Form(
    //         key: _formKey,
    //         autovalidateMode: AutovalidateMode.onUserInteraction,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           mainAxisSize: MainAxisSize.max,
    //           children: [
    //             TextFormField(
    //               //initialValue: 'emrealtunbilek',
    //               decoration: InputDecoration(
    //                   //errorStyle: TextStyle(color: Colors.orange),
    //                   border: OutlineInputBorder(),
    //                   labelText: 'Username',
    //                   hintText: 'Username'),
    //               onSaved: (deger) {
    //                 _userName = deger!;
    //               },
    //               validator: (deger) {
    //                 if (deger!.length < 4) {
    //                   return 'Username en az 4 karakter olmalı';
    //                 } else
    //                   return null;
    //               },
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             TextFormField(
    //               //initialValue: 'emrealtunbilek@gmail.com',
    //               keyboardType: TextInputType.emailAddress,
    //               decoration: InputDecoration(
    //                   //errorStyle: TextStyle(color: Colors.orange),
    //                   border: OutlineInputBorder(),
    //                   labelText: 'Email',
    //                   hintText: 'Email'),
    //               onSaved: (deger) {
    //                 _email = deger!;
    //               },
    //               validator: (deger) {
    //                 if (deger!.isEmpty) {
    //                   return 'email boş olamaz';
    //                 } else if (!EmailValidator.validate(deger)) {
    //                   return 'Geçerli mail giriniz';
    //                 } else
    //                   return null;
    //               },
    //             ),
    //             LoginPage(),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             TextFormField(
    //               //initialValue: 'emrealtunbilek@gmail.com',
    //               keyboardType: TextInputType.text,
    //               decoration: InputDecoration(
    //                   //errorStyle: TextStyle(color: Colors.orange),
    //                   border: OutlineInputBorder(),
    //                   labelText: 'Password',
    //                   hintText: 'Password'),
    //               onSaved: (deger) {
    //                 _password = deger!;
    //               },
    //               validator: (deger) {
    //                 if (deger!.length < 6) {
    //                   return 'Şifre ne az 6 karakter olmalı';
    //                 } else
    //                   return null;
    //               },
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 bool _validate = _formKey.currentState!.validate();
    //                 if (_validate) {
    //                   _formKey.currentState!.save();
    //                   String result =
    //                       'username:$_userName\nemail:$_email\nSifre:$_password';

    //                   ScaffoldMessenger.of(context).showSnackBar(
    //                     SnackBar(
    //                       backgroundColor: Colors.orange.shade300,
    //                       content: Text(
    //                         result,
    //                         style: TextStyle(fontSize: 24),
    //                       ),
    //                     ),
    //                   );
    //                   _formKey.currentState!.reset();
    //                 }
    //               },
    //               child: Text('Onayla'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

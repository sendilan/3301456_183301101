import 'package:flutter/material.dart';
import 'package:kitap/view/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('KİTAP KURDU'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Image.asset('assets/png/kitap.png'),
            TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                labelStyle: const TextStyle(color: Colors.white70),
                labelText: 'First Name',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      firstName: _firstNameController.text,
                      lastName: _lastNameController.text,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
              ),
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
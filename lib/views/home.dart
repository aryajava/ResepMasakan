import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resepmasakan/views/reseptelur/reseptelur.dart';
import 'package:resepmasakan/views/resepayam/resepayam.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Resep Masakan",
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.zero,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/logo_resep_makanan.png',
              height: 80,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size.fromWidth(320),
                          primary: Colors.white,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.20),
                          padding: EdgeInsets.symmetric(vertical: 30),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ResepTelur();
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              'Masakan Telur',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size.fromWidth(320),
                          primary: Colors.white,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.20),
                          padding: EdgeInsets.symmetric(vertical: 30),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ResepAyam();
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              'Masakan Ayam',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size.fromWidth(320),
                          primary: Colors.white,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.20),
                          padding: EdgeInsets.symmetric(vertical: 30),
                        ),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return ResepTelur(); // ganti resep bebek
                          //     },
                          //   ),
                          // );
                        },
                        child: Column(
                          children: [
                            Text(
                              'Masakan Bebek',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size.fromWidth(320),
                          primary: Colors.white,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.20),
                          padding: EdgeInsets.symmetric(vertical: 30),
                        ),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return ResepTelur(); // ganti resep kambing
                          //     },
                          //   ),
                          // );
                        },
                        child: Column(
                          children: [
                            Text(
                              'Masakan Kambing',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 50)),
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Image(
                image: AssetImage("assets/images/logo_resep_makanan.png"),
              ),
            ),
            ListTile(
              title: const Text(
                'Beranda',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Favorit',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

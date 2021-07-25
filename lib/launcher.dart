import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resepmasakan/views/home.dart' as view;

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new view.Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/logo_resep_makanan.png",
            ),
          ],
        ),
      ),
    );
  }
}

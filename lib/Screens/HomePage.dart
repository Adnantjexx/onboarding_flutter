import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Image.asset(
              "assets/adnantjeexx/adnantjeexx.png",
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "Adnantjee.xx",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


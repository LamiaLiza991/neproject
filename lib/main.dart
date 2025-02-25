import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.network(
                "https://retailbd.com/wp-content/uploads/2018/08/BY51K.jpg"),
            Image.network(
                "https://cdn4.ethoswatches.com/the-watch-guide/wp-content/uploads/2017/11/couple-watches-men-women-prices-wedding-season-shopping-1.jpg"),
                Image.network(
                "https://frederiqueconstant.com/wp-content/uploads/images/Watch-Angels-1920x1080-1.jpg"),
          ],
        )),
      ),
    );
  }
}


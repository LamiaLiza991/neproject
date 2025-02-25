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
        appBar: AppBar(
          title: const Text('Image Gallery with Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle tap on Item 1
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Handle tap on Item 2
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {
                  // Handle tap on Item 3
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://media.istockphoto.com/id/1263070782/photo/beautiful-mist-over-green-forest-on-mountain.jpg?s=612x612&w=0&k=20&c=QTI2fAeNTUYiUs7g4BK38_zPMuPC4GyyYV4Sys7LBb4="),
              Image.network(
                  "https://media.istockphoto.com/id/1186837330/photo/rainforest-valley.jpg?s=612x612&w=0&k=20&c=NCAOR1y9eLW8nCH8nrqNpcqwvWmegTuN5rSCN4cZDg8="),
              Image.network(
                  "https://media.istockphoto.com/id/1388206034/photo/landscape-of-the-mist-covered-mountain-in-the-morning-with-warmed-sun-beams-for-background.jpg?s=612x612&w=0&k=20&c=uiBi3iHngIMIgmpUjSX_uhdH-z9jHK5EjOG1TzZpOpE="),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images with Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Drawer header with cross button to close
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Drawer Header',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Close the drawer
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.blue),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.orange),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Main photo section
              Image.network(
                "https://media.istockphoto.com/id/1263070782/photo/beautiful-mist-over-green-forest-on-mountain.jpg?s=612x612&w=0&k=20&c=QTI2fAeNTUYiUs7g4BK38_zPMuPC4GyyYV4Sys7LBb4=",
              ),
              Image.network(
                "https://media.istockphoto.com/id/1186837330/photo/rainforest-valley.jpg?s=612x612&w=0&k=20&c=NCAOR1y9eLW8nCH8nrqNpcqwvWmegTuN5rSCN4cZDg8=",
              ),
              Image.network(
                "https://media.istockphoto.com/id/1388206034/photo/landscape-of-the-mist-covered-mountain-in-the-morning-with-warmed-sun-beams-for-background.jpg?s=612x612&w=0&k=20&c=uiBi3iHngIMIgmpUjSX_uhdH-z9jHK5EjOG1TzZpOpE=",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


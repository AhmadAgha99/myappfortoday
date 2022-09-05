import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Image(image: AssetImage("images/1.webp")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 205, 7, 255),
                    onPrimary: Colors.blue,
                    primary: Colors.yellowAccent,
                    elevation: 20),
                child: Text("first button"),
                onPressed: () => print("#1 button")),
            Image(image: AssetImage("images/3.webp")),
            ElevatedButton(
                onLongPress: () => print("pressed too long"),
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 2, 32, 1),
                    onPrimary: Color.fromARGB(255, 219, 243, 33),
                    primary: Color.fromARGB(255, 14, 211, 214),
                    elevation: 20),
                child: Text("second button"),
                onPressed: () => print("second button")),
          ],
        ),
      ),
    );
  }
}

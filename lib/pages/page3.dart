import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class DecrementPage extends StatefulWidget {
  const DecrementPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DecrementPageState createState() => _DecrementPageState();
}

class _DecrementPageState extends State<DecrementPage> {
  int counter = 100;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Decrement")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nilai: $counter",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textColor),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                  textColor = getRandomColor();
                });
              },
              child: Text("Kurangi"),
            ),
          ],
        ),
      ),
    );
  }
}

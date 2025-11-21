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

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int counter = 0;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Increment")),
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
                  counter++;
                  textColor = getRandomColor();
                });
              },
              child: Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}

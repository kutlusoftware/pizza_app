import 'package:flutter/material.dart';
import 'package:pizza_app/main.dart';
import 'package:pizza_app/views/three_page.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({super.key});

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  var languages;
  String selectLanguage = "English";

  @override
  void initState() {
    super.initState();
    languages = ["Turkish", "English", "French"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("images/minilogo.png"),
            SizedBox(width: 4),
            Image.asset("images/minibrand.png"),
            Spacer(),
            DropdownButton(
              value: selectLanguage,
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (String? select) {
                setState(() {
                  selectLanguage = select!;
                });
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset("images/pizza.png")),
            SizedBox(height: 8),
            Text(
              "Welcome to Ovenly",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 8),
            Text(
              "Your favorite pizzas, freshly baked and delivered to your doorstep with love and care!",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 196, 67, 20),
                      size: 10,
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 201, 197, 197),
                      size: 10,
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 201, 197, 197),
                      size: 10,
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 201, 197, 197),
                      size: 10,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 187, 61, 33),
                foregroundColor: Colors.white,
                fixedSize: Size(350, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThreePage()),
                );
              },
              child: Text(
                "Log in",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 254, 254),
                foregroundColor: const Color.fromARGB(255, 187, 61, 33),
                fixedSize: Size(350, 50),
                //side: BorderSide(color: Colors.white),
              ),
              onPressed: () {
                setState(() {});
              },
              child: Text(
                "Sign me up",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

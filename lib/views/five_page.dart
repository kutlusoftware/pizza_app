import 'package:flutter/material.dart';

class FivePage extends StatefulWidget {
  const FivePage({super.key});

  @override
  State<FivePage> createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Spacer(),
            Text(
              "Need help?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 198, 61, 19),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify Your Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your PIN here to log in",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 196, 67, 20),
                      size: 15,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 196, 67, 20),
                      size: 15,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 196, 67, 20),
                      size: 15,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: const Color.fromARGB(255, 196, 67, 20),
                      size: 15,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: Colors.grey.shade400,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Try another way",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 198, 61, 19),
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            SizedBox(height: 5),
            Image.asset("images/brand.png"),
          ],
        ),
      ),
    );
  }
}

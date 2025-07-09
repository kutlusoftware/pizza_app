import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/views/five_page.dart';
import 'package:pizza_app/views/four_page.dart';
import 'package:pizza_app/views/product.dart';
import 'package:pizza_app/views/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Product());
  }
}

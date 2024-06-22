import 'package:clothe/core/router/router.dart';
import 'package:clothe/presentation/bottom_navbar/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClotheApp());
}
class ClotheApp extends StatelessWidget {
  const ClotheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.grey.shade300,
        fontFamily: 'Work Sans',

      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.router.onGenerate,
      initialRoute: 'onboard',
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),

      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome()
    );
  }
}

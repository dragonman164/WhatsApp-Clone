import 'package:flutter/material.dart';
import 'screens/chat_with_person_screen.dart';
import 'screens/home_screen.dart';
import 'screens/call_with_person.dart';
import 'screens/settings_screen.dart';
import 'screens/status_privacy.dart';

void main() => runApp(new MyApp());

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
      initialRoute: WhatsAppHome.routeName,
      routes: {
        WhatsAppHome.routeName: (context) => WhatsAppHome(),
        ChatWithPerson.routeName: (context) => ChatWithPerson(),
        CallWithPerson.routeName:(context)=>CallWithPerson(),
        Settings.routeName:(context)=> Settings(),
        StatusPrivacy.routeName:(context)=>StatusPrivacy(),


      },
    );
  }
}

import 'package:fci_app/chat_screen.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        //ChatScreen.id: (context) => ChatScreen(),
        // ChatScreen.id: (context) => ChatScreen(),
        // ChatScreen.id: (context) => ChatScreen(),
      },

      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

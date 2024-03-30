import 'package:chat_app/views/pages/login_page.dart';
import 'package:chat_app/views/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => const LoginPage(),
        'RegisterPage': (context) => const RegisterPage(),
      },
      title: 'Scholar Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'LoginPage',
    );
  }
}

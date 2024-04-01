import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/views/pages/chat_page.dart';
import 'package:chat_app/views/pages/login_page.dart';
import 'package:chat_app/views/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => const LoginPage(),
        RegisterPage.registerRoute: (context) => const RegisterPage(),
        ChatPage.chatRoute: (context) => const ChatPage(),
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

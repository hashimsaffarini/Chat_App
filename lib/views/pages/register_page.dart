import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:chat_app/views/widgets/custom_button.dart';
import 'package:chat_app/views/widgets/custom_text_filed.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const String registerRoute = 'RegisterPage';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/scholar.png',
              ),
              const Text(
                'Scholar Chat ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'pacifico',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFiled(
                onChanged: (data) {
                  email = data;
                },
                hintText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFiled(
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () async {
                  var auth = FirebaseAuth.instance;
                  UserCredential user =
                      await auth.createUserWithEmailAndPassword(
                    email: email!,
                    password: password!,
                  );
                  log('User: ${user.user!.email}');
                },
                text: 'REGISTER',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/dashboard.dart';

import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Welcome Back! Login with your credentials",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: username,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffa2b965))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffa2b965))),
                filled: true,
                fillColor: Colors.white,
                labelText: "Username",
                hintText: "Enter your username",
                prefixIcon: Icon(Icons.people),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.accentColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.accentColor)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              minWidth: double.maxFinite,
              height: 50,
              color: Palette.accentColor,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
              child: const Text("Login",
                  style: TextStyle(
                    color: Palette.bgColor,
                    fontSize: 16,
                  )),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const Register())),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Palette.accentColor),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

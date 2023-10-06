import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
              "Register",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Create an account for free",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffa2b965))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffa2b965))),
                filled: true,
                fillColor: Colors.white,
                labelText: "E-Mail",
                hintText: "Enter email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),
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
                hintText: "Enter username",
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
                hintText: "Enter password",
                prefixIcon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: confirmPassword,
              obscureText: true,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.accentColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.accentColor)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Confirm Password",
                hintText: "Enter confirm password",
                prefixIcon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              minWidth: double.maxFinite,
              height: 50,
              color: Palette.accentColor,
              onPressed: () {},
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
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Login())),
                  child: const Text(
                    "Sign in",
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

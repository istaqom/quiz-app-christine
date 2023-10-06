import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/dashboard.dart';
import 'package:quiz_app/screen/quiz.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_1.png"), fit: BoxFit.cover)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                        colors: [Colors.amber, Palette.secondaryColor])
                    .createShader(bounds),
                child: const Text(
                  "CONGRATULATIONS!",
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/award.png",
                width: 160,
                height: 160,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your score is 9 out of 10",
                style: TextStyle(
                  color: Palette.bgColor,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                minWidth: 30,
                height: 50,
                color: Palette.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Quiz()));
                },
                child: const Text("RETRY",
                    style: TextStyle(
                      color: Palette.bgColor,
                      fontSize: 20,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: 30,
                height: 50,
                color: Palette.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Dashboard()));
                },
                child: const Text("HOME",
                    style: TextStyle(
                      color: Palette.bgColor,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

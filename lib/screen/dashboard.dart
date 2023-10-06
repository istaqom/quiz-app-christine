import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/article.dart';
import 'package:quiz_app/screen/quiz.dart';
import 'package:quiz_app/screen/video.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                        colors: [Palette.accentColor, Palette.primaryColor])
                    .createShader(bounds),
                child: const Text(
                  "WELCOME!",
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                height: 50,
                color: Palette.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Quiz()));
                },
                child: const Text("QUIZ",
                    style: TextStyle(
                      color: Palette.bgColor,
                      fontSize: 20,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                height: 50,
                color: Palette.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Article()));
                },
                child: const Text("ARTICLE",
                    style: TextStyle(
                      color: Palette.bgColor,
                      fontSize: 20,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                height: 50,
                color: Palette.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Video()));
                },
                child: const Text("VIDEO",
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

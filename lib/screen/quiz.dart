import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover)),
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
                            colors: [Palette.accentColor, Palette.bgColor])
                        .createShader(bounds),
                    child: const Text(
                      "QUIZ QUEST",
                      style: TextStyle(
                        color: Palette.accentColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  MaterialButton(
                    minWidth: 30,
                    height: 50,
                    color: Palette.accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Question()));
                    },
                    child: const Text("START",
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

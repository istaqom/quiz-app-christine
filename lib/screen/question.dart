import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/result.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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
              Container(
                height: 500,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Palette.bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Question 1/10",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Who directed the Spider-Man: Homecoming movie?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                        minWidth: double.maxFinite,
                        height: 40,
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => const ()));
                        },
                        child: const Text("JAMES WATT",
                            style: TextStyle(
                              color: Palette.bgColor,
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        minWidth: double.maxFinite,
                        height: 40,
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => const ()));
                        },
                        child: const Text("ANTHONY RUSSO",
                            style: TextStyle(
                              color: Palette.bgColor,
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        minWidth: double.maxFinite,
                        height: 40,
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => const ()));
                        },
                        child: const Text("JOE RUSSO",
                            style: TextStyle(
                              color: Palette.bgColor,
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        minWidth: double.maxFinite,
                        height: 40,
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => const ()));
                        },
                        child: const Text("NIA DACOSTA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Palette.bgColor,
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                height: 40,
                color: Palette.accentColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0))),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Result()));
                },
                child: const Text("NEXT",
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

import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Article'),
        ),
        backgroundColor: Palette.bgColor,
        body: const Center(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Galaxy Tab S9 FE will get plenty of OS upgrades - SamMobile - Samsung news",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                  image: NetworkImage(
                      "https://www.sammobile.com/wp-content/uploads/2023/10/Galaxy-Tab-S9-FE-featured-720x405.jpg")),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SamMobile",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    "October 04, 2023",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Samsung remains the king of firmware updates across the Android landscape. Even though things might not always go as planned and beta update programs can last longer than we'd like, Samsung's OS update policies are ahead of the curve. As of this writing, no other Android OEM supports its phones and tablets like Samsung does; not even Google, although rumor has it that the latter company is planning seven years of updates for the Pixel 8.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )));
  }
}

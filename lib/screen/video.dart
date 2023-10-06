import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  List<Map<String, String>> video = [
    {
      "img": "https://img.youtube.com/vi/ivXc83r_hxo/maxresdefault.jpg",
      "title": "Samsung Galaxy Tab S9 Ultra Review 2023 - SUPREME",
      "url": "https://www.youtube.com/watch?ivXc83r_hxo"
    },
    {
      "img": "https://img.youtube.com/vi/Exu7r2vZpcw/maxresdefault.jpg",
      "title": "This is Meta Quest 3",
      "url": "https://www.youtube.com/watch?Exu7r2vZpcw"
    },
    {
      "img": "https://img.youtube.com/vi/w_JEezynhrc/maxresdefault.jpg",
      "title": "iPhone 15 Pro | Titanium | Apple",
      "url": "https://www.youtube.com/watch?w_JEezynhrc"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
      ),
      backgroundColor: Palette.bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: video.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(video[index]["url"]!));
                  },
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => const ()));
                  // },
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(video[index]["img"]!),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.darken)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              video[index]["title"]!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      )),
                );
              }),
        ),
      ),
    );
  }
}

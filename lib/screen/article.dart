import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/detail.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  List<Map<String, String>> article = [
    {
      "img":
          "https://www.sammobile.com/wp-content/uploads/2023/10/Galaxy-Tab-S9-FE-featured-720x405.jpg",
      "title":
          "Galaxy Tab S9 FE will get plenty of OS upgrades - SamMobile - Samsung news",
      "author": "Alex Stedman",
      "date": "October 04, 2023",
    },
    {
      "img":
          "https://assets-prd.ignimgs.com/2023/10/03/acthumb-1696349702846.jpg?width=1280",
      "title": "Assassin's Creed Mirage Global Launch Times Confirmed - IGN",
      "author": "Sam Mobile",
      "date": "October 03, 2023",
    },
    {
      "img":
          "https://cdn.mos.cms.futurecdn.net/ogPL8bPKCPHUixUk8dwAh9-1200-80.jpg",
      "title":
          "Old Xbox One, PC exclusive 'Gigantic' may be back from the dead, at least according to this email - Windows Central",
      "author": "Jez Corden",
      "date": "October 03, 2023",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      backgroundColor: Palette.bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: article.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detail()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(article[index]["img"]!),
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
                              article[index]["title"]!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  article[index]['author']!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  article[index]['date']!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
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

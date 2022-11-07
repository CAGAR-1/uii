import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second_Screen extends StatelessWidget {
  Second_Screen({super.key});
  List images = [
    "images/b1.png",
    "images/b2.png",
    "images/b3.png",
    "images/b4.png",
    "images/b5.png"
  ];

  List<List<Color>> colors = [
    [
      Colors.pink.withOpacity(0.2),
      Colors.white.withOpacity(1),
      Colors.purple.withOpacity(0.2),
      Colors.white.withOpacity(1),
      Colors.pink.withOpacity(0.2),
      Colors.white.withOpacity(1),
      // Colors.red.withOpacity(0.3),
      // Colors.white.withOpacity(1),
      // Colors.orange.withOpacity(0.3),
      // Colors.white.withOpacity(1),
      // Colors.red.withOpacity(0.2),
      // Colors.white.withOpacity(1),
    ],
  ];
  List guitar = [
    'images/g1.png',
    'images/g2.png',
    'images/g3.png',
    'images/g4.png',
    'images/g5.png',
  ];
  List topic = [
    'images/b1.png',
    'images/b2.png',
    'images/b3.png',
    'images/b4.png',
    'images/b5.png',
  ];

  List rating = ['4.8', '4.2', '4.5', '4.9', '4.3'];

  List brands = ['Ibanez', 'Gibson', 'Fender', 'PSR', 'R&L', 'Ibanez'];

  List name = [
    'Acoustic Guitar',
    'Ultimate Soprano',
    'Spruce Rosewood',
    'Natural Acoustic',
    'Juarez Acoustic',
    'Ultimate Soprano'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.sort,
          color: Colors.black,
        ),
        title: Text(
          "Voicer",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("images/guitarback.jpeg"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        physics: BouncingScrollPhysics(),
        children: [
          Text(
            "Choose Brand",
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: ListView.builder(
                itemCount: 5,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 0 : 10, top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 4,
                    shadowColor: Colors.black.withOpacity(0.9),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(images[index]))),
                    ),
                  );
                })),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Best Product",
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 25),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: Clip1(),
                      child: Card(
                        elevation: 4,
                        margin: EdgeInsets.all(8),
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.pink.withOpacity(0.4),
                            // gradient: LinearGradient(
                            //     colors: colors[index],
                            //     begin: Alignment.bottomRight,
                            //     end: Alignment.centerLeft)
                          ),
                        ),
                      ),
                    ),
                    Hero(
                        tag: guitar[index],
                        child: Container(
                          margin: EdgeInsets.only(bottom: 80, top: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage((guitar[index])))),
                        )),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.local_fire_department,
                              color: Colors.pink.withOpacity(0.8),
                              size: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              rating[index] + "   ",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 19),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 135,
                        ),
                        Center(
                          child: Text(
                            name[index],
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18, top: 3),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              brands[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Clip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * (0.7));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * (0.34));
    path.quadraticBezierTo(size.width, size.height * (0.3), size.width * (0.92),
        size.height * (0.31));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

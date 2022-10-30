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
          GridView.builder(shrinkWrap: true,
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
                              color: Colors.pink
                              // gradient: LinearGradient(colors: Colors.   fromRGBO(59, 8, 5, 1),begin: Alignment.center)
                              ),
                        ),
                      ),
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
    path.moveTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.lineTo(size.width, size.height * (0.34));
    path.quadraticBezierTo(size.width, size.height * (0.3), size.width * (0.92),
        size.height * (0.31));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

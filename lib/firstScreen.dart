import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class First_Screen extends StatelessWidget {
  const First_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage("images/guitarback.jpeg"),
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  FontAwesomeIcons.guitar,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Internal",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Voice",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
              SizedBox(
                height: 200,
              ),
              Center(
                child: Text(
                  "When Words",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Fails",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Music Speaks",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  // margin: EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 0.7)),
                child: Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

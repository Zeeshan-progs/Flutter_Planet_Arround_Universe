import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universe_brief/Info.dart';
import 'package:universe_brief/containerview.dart';

class ExpandedView extends StatelessWidget {
  final PlanetInfo planetInfo;

  const ExpandedView({Key key, this.planetInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              planetInfo.background,
              height: size.height,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    planetInfo.name.toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 10,
                      fontSize: 35,
                    ),
                  ),
                  DisplayText(
                    text: planetInfo.specification,
                    fontSize: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

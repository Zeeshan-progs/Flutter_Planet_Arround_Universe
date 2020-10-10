import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:universe_brief/Expanded_Page.dart';
import 'package:universe_brief/Info.dart';

class ContainerView extends StatefulWidget {
  @override
  _ContainerViewState createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  PageController _controller;
  int _page = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/gifs/background.gif',
                    height: 800,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  PageView.builder(
                    itemCount: planets.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, a, b) => ExpandedView(
                                planetInfo: planets[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(
                                      planets[index].name.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 70,
                                        decoration: TextDecoration.overline,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 50),
                                      Text(
                                        'Distance From Sun ',
                                        style: TextStyle(
                                          fontFamily: 'kaushan script',
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        planets[index].distance,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Radius ',
                                        style: TextStyle(
                                          fontFamily: 'kaushan script',
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        planets[index].radius,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 230,
                                left: 0,
                                child: Image.asset(
                                  planets[index].iconImage,
                                  height: 300,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 50,
                                right: 0,
                                left: 0,
                                child: Center(
                                  child: Text('Click to know more'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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

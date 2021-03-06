import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:universe_brief/Expanded_Page.dart';
import 'package:universe_brief/Info.dart';

class ContainerView extends StatefulWidget {
  @override
  _ContainerViewState createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  int currentPage = 0;
  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'assets/background.jpg',
                  height: size.height,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Opacity(
                  opacity: .6,
                  child: Container(
                    color: Colors.black,
                    height: size.height,
                    width: size.width,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      planets[currentPage].name.toUpperCase(),
                      style: TextStyle(
                        fontSize: 70,
                        decoration: TextDecoration.overline,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      DisplayText(
                        text: 'Distance from Sun',
                        fontSize: 27,
                      ),
                      Text(
                        planets[currentPage].distance,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      DisplayText(
                        fontSize: 27,
                        text: 'Radius',
                      ),
                      Text(
                        planets[currentPage].radius,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                PageView.builder(
                  onPageChanged: onPageChanged,
                  itemCount: planets.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) =>
                                ExpandedView(
                              planetInfo: planets[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -230,
                            left: -40,
                            child: Image.asset(
                              planets[index].iconImage ?? '',
                              height: size.height / 1.3,
                              width: size.width / .9,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  right: 10,
                  bottom: 150,
                  child: Column(
                    children: List.generate(
                      planets.length,
                      (index) => buildDot(index, size),
                    ),
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
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index, Size size) {
    return AnimatedContainer(
      height: size.height / 30,
      width: size.width / 30,
      margin: EdgeInsets.symmetric(vertical: 5),
      duration: Duration(milliseconds: 287),
      curve: Curves.bounceInOut,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow),
        color:
            currentPage == index ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({
    Key key,
    this.fontSize,
    this.text, this.color = Colors.white,
  }) : super(key: key);

  final Color color;
  final double fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'kaushan script',
        fontSize: fontSize,
        color: color,
      ),
      maxLines: 7,
    );
  }
}

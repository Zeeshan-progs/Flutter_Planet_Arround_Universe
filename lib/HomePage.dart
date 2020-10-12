import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:universe_brief/Info.dart';

import 'Components.dart';
import 'Expanded_Page.dart';

// Swiper Package Used
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'sansita swashed',
                  color: secondaryTextColor,
                ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Swiper(
                  // predefined package used
                  itemCount: planets.length, // length
                  itemWidth:
                      MediaQuery.of(context).size.width - 100, // size of screen
                  layout: SwiperLayout.STACK,
                  duration: 3,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      // doted indicator of page changing
                      activeColor: secondaryTextColor,
                      color: Colors.blueGrey[100],
                      size: 8,
                      activeSize: 12,
                      space: 7,
                    ),
                  ),
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
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 100),
                            // height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 150),
                                Text(
                                  planets[index].name,
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: primaryTextColor,
                                      fontFamily: 'kaushan script'),
                                ),
                                SizedBox(height: 50),
                                Text(
                                  'Solar System        ',
                                  style: TextStyle(
                                    color: Colors.deepPurple[800],
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              planets[index].position.toString(),
                              style: TextStyle(
                                color: secondaryTextColor,
                                fontSize: 180,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'sansita swashed',
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 0,
                            right: 0,
                            child: Image.asset(
                              planets[index].iconImage,
                              height: 300,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
            // color: secondaryTextColor,
            activeColor: Colors.blue,
            items: [
              TabItem(
                // isIconBlend: true,
                icon: Icon(
                  Icons.home,
                  size: 36,
                ),
              ),
              TabItem(
                // isIconBlend: true,
                icon: Icon(
                  Icons.search,
                  // color: secondaryTextColor,

                  size: 36,
                ),
              ),
              TabItem(
                // isIconBlend: true,
                icon: Icon(
                  Icons.person,
                  // color: Colors.amber,
                  size: 36,
                ),
              ),
            ]),
      ),
    );
  }
}

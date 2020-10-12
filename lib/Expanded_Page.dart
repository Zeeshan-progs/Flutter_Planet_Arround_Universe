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
            Opacity(
              opacity: .4,
              child: Container(
                color: Colors.black54,
                height: size.height,
                width: size.width,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    planetInfo.name.toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 15,
                      fontSize: 38,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: DisplayText(
                    text: 'Gallery',
                    fontSize: 35,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: planetInfo.images.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.network(
                            planetInfo.images[index],
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: DisplayText(
                    text: planetInfo.specification,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      text: 'Gravity',
                      fontSize: 30,
                    ),
                    RowData(
                      planetInfo: planetInfo,
                      text: planetInfo.gravity,
                      icon: 'assets/icons/gravity.png',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      fontSize: 30,
                      text: 'Orbital Period ',
                    ),
                    RowData(
                      planetInfo: planetInfo,
                      text: planetInfo.orbitalPeriod,
                      icon: 'assets/icons/orbital.png',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      text: ' Distance from Sun',
                      fontSize: 20,
                    ),
                    RowData(
                      text: planetInfo.distance,
                      icon: 'assets/icons/distance.png',
                      planetInfo: planetInfo,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      text: 'Radius',
                      fontSize: 30,
                    ),
                    RowData(
                      planetInfo: planetInfo,
                      text: planetInfo.radius,
                      icon: 'assets/icons/radius.png',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RowData(
                          planetInfo: planetInfo,
                          text: planetInfo.temperature,
                          icon: 'assets/icons/temperature.png',
                          fontSize: 27,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      text: 'Length Of Days',
                      fontSize: 27,
                    ),
                    RowData(
                      planetInfo: planetInfo,
                      fontSize: 20,
                      text: planetInfo.lengthOfDay,
                      icon: 'assets/icons/lengthofday.png',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DisplayText(
                      text: 'Mass',
                      fontSize: 27,
                    ),
                    RowData(
                      planetInfo: planetInfo,
                      fontSize: 20,
                      text: planetInfo.mass,
                      icon: 'assets/icons/mass.png',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Divider(),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Opacity(
                      opacity: .7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Image.asset(
                          planetInfo.gifs,
                          fit: BoxFit.cover,
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    DisplayText(
                      text: planetInfo.description,
                      fontSize: 26,
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RowData extends StatelessWidget {
  const RowData({
    Key key,
    @required this.planetInfo,
    this.icon,
    this.text,
    this.fontSize = 27,
  }) : super(key: key);

  final PlanetInfo planetInfo;
  final String icon, text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
          color: Colors.grey,
        ),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}

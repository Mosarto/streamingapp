import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:streamapp/Data/data.dart';
import 'package:streamapp/Screens/Movie_Screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                height: 24,
                width: 24,
                padding: EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'assets/icons/notifications.svg',
                ),
              );
            },
          ),
          title: Text(
            'eFLIX',
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
                foreground: Paint()..shader = linearGradient,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/icons/search.svg',
              ),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Continue Watching',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.50,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 295,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final watchlist in movieswathcing) ...[
                          Container(
                            width: 225,
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: watchlist.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/more.svg',
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: CircularPercentIndicator(
                                      radius: 92,
                                      lineWidth: 5.0,
                                      animation: true,
                                      startAngle: 90,
                                      percent: watchlist.watchtime,
                                      center: Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffF6EEEE),
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(0xffED0000),
                                          size: 42,
                                        ),
                                      ),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Color(0xffFFFFFF),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.50,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 35,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            select(index);
                          });
                        },
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 265),
                          curve: Curves.easeIn,
                          margin: EdgeInsets.only(left: 10),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            color: selected[index] != true
                                ? Colors.transparent
                                : Colors.white,
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: selected[index] != true
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width + 120,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.72,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieScreen(
                                moviescreendata: movies[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 235,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: movies[index].img,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:it_land_test/View/Page/DrawerPage.dart';
import 'package:it_land_test/View/Widget/ActionPostWidget.dart';
import 'package:it_land_test/View/Widget/HeaderHomeWidget.dart';
import 'package:it_land_test/View/Widget/NavigatorWidget.dart';
import 'package:it_land_test/View/Widget/PostWidget.dart';
import 'package:it_land_test/View/Widget/SliderHomeWidget.dart';

import '../../utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // backgroundColor: Color(0xff022639),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 23 * fem,
            ),
            HeaderHomeWidget(),
            Container(
              padding: EdgeInsets.only(
                  left: 21.7 * fem,
                  right: 21.7 * fem,
                  top: 23.7 * fem,
                  bottom: 23.7 * fem),
              child: Text(
                'TRENDING COMPANIES',
                style: SafeGoogleFont(
                  'Oxygen',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2625 * ffem / fem,
                  letterSpacing: -0.36 * fem,
                  color: Color(0xfffb8500),
                ),
              ),
            ),
            SliderHomeWidget(),
            // SizedBox(height: 33.2*fem,),
            for (int i = 0; i < 2; i++)
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PostWidget(),
                  ActionPostWidget(),
                ],
              ),
          ],
        ),
      ),
      drawer: DrawerPage(),
      bottomNavigationBar: NavigatorWidget(),
    );
  }
}

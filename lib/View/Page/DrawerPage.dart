import 'package:flutter/material.dart';
import 'package:it_land_test/View/Page/HomePage.dart';
import 'package:it_land_test/View/Widget/DrawerAlignWidget.dart';
import 'package:it_land_test/View/Widget/DrawerWidget.dart';

import '../../utils.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0018310547;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // backgroundColor: Color(0xff022639),
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => HomePage()));
            print("Back");
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(left: fem * 97),
          child: Text(
            'Menu',
            style: SafeGoogleFont(
              'Readex Pro',
              fontSize: 22 * ffem,
              fontWeight: FontWeight.w600,
              height: 1.25 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
        ),
        backgroundColor: Color(0xff022639),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: fem * 11,
              ),
              DrawerWidget(
                  title: 'Profile',
                  icon: 'assets/images/users-profile-circle.png',
                  action: () => action(1)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'News',
                  icon: 'assets/images/archive-book-saved.png',
                  action: () => action(2)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'Favorites',
                  icon: 'assets/images/support-heart-circle.png',
                  action: () => action(3)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'Notifications',
                  icon: 'assets/images/essetional-lamp.png',
                  action: () => action(4)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'Settings',
                  icon: 'assets/images/settings-setting-2.png',
                  action: () => action(5)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'Frequently Quastions',
                  icon: 'assets/images/email-message.png',
                  action: () => action(6)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'About us',
                  icon: 'assets/images/essetional-info-circle.png',
                  action: () => action(7)),
              DrawerAlignWidget(),
              DrawerWidget(
                  title: 'Log Out',
                  icon: 'assets/images/arrow-logout.png',
                  action: () => action(8)),
            ],
          ),
        ),
      ),
    );
  }
}

void action(int num) {
  if (num == 1) {
    print("Profile");
  } else if (num == 2) {
    print("News");
  } else if (num == 3) {
    print("Favorites");
  } else if (num == 4) {
    print("Notifications");
  } else if (num == 5) {
    print("Settings");
  } else if (num == 6) {
    print("Frequently Quastions");
  } else if (num == 7) {
    print("About us");
  } else if (num == 8) {
    print("Log Out");
  }
}

import 'package:flutter/material.dart';
import '../../utils.dart';

class NavigatorWidget extends StatelessWidget {
  NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      height: fem * 69.2,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(fem * 31.2),
          topRight: Radius.circular(fem * 31.2),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 9.2 * fem,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('Home');
                },
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/iconly-light-outline-home.png',
                        width: 33.65 * fem,
                        height: 35.84 * fem,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Home',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2857142857 * ffem / fem,
                          letterSpacing: -0.2800000012 * fem,
                          color: Color(0xfffb8500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Company');
                },
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/iconly-light-outline-bag-pTe.png',
                        width: 32.64 * fem,
                        height: 34.54 * fem,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Company',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2857142857 * ffem / fem,
                          letterSpacing: -0.2800000012 * fem,
                          color: Color(0xfffb8500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Product');
                },
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/iconly-light-outline-buy-sPJ.png',
                        width: 32.4 * fem,
                        height: 32.57 * fem,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Product',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2857142857 * ffem / fem,
                          letterSpacing: -0.2800000012 * fem,
                          color: Color(0xfffb8500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('3rd Party');
                },
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/iconly-light-outline-3-user.png',
                        width: 35.27 * fem,
                        height: 27.99 * fem,
                      ),
                    ),
                    Container(
                      child: Text(
                        '3rd Party',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2857142857 * ffem / fem,
                          letterSpacing: -0.2800000012 * fem,
                          color: Color(0xfffb8500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                  print('Menu');
                },
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/iconly-light-outline-category-zyJ.png',
                        width: 31.59 * fem,
                        height: 32.5 * fem,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Menu',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2857142857 * ffem / fem,
                          letterSpacing: -0.2800000012 * fem,
                          color: Color(0xfffb8500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

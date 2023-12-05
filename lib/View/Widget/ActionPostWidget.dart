import 'package:flutter/material.dart';

import '../../utils.dart';

class ActionPostWidget extends StatelessWidget {
  const ActionPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      alignment: Alignment.center,
      width: 357 * fem,
      height: 33.7 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13 * fem),
        color: Color(0xffffffff),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              print('Like');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/favorite-2-1.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
                SizedBox(
                  width: 5.2 * fem,
                ),
                Container(
                  child: Text(
                    'Like',
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1 * ffem / fem,
                      letterSpacing: -0.2800000012 * fem,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Share');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5.2 * fem,
                ),
                Container(
                  child: Text(
                    'Share',
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1 * ffem / fem,
                      letterSpacing: -0.2800000012 * fem,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Contact');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.call_made_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5.2 * fem,
                ),
                Container(
                  child: Text(
                    'Contact',
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1 * ffem / fem,
                      letterSpacing: -0.2800000012 * fem,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding:
          EdgeInsets.only(top: 21.2 * fem),
          child: Container(
            width: 357 * fem,
            height: 287 * fem,
            margin: EdgeInsets.all(11.2 * fem),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13 * fem),
              color: Color(0xffffffff),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Dive.png'),
                  ),
                  title: Text(
                    'Dive company',
                    style: SafeGoogleFont(
                      'Oxygen',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2625 * ffem / fem,
                      letterSpacing: -0.36 * fem,
                      color: Color(0xfffb8500),
                    ),
                  ),
                  subtitle: Text(
                    '50m .',
                    style: SafeGoogleFont(
                      'Oxygen',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2625 * ffem / fem,
                      letterSpacing: -0.36 * fem,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.2 * fem),
                    child: Text(
                      'As a technlgy solutins provider, Dive company offers a Ui/Ux services',
                      style: SafeGoogleFont(
                        'Open Sans',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575 * ffem / fem,
                        letterSpacing: -0.26 * fem,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 165 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('First Image');
                        },
                        child: Container(
                          // rectangle16xkL (I3:249;3:98)
                          width: 98.71 * fem,
                          height: 165 * fem,
                          child: Image.asset(
                            'assets/images/rectangle-16-2Eg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.53 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Second Image');
                        },
                        child: Container(
                          // rectangle185KA (I3:249;3:99)
                          width: 98.71 * fem,
                          height: 165 * fem,
                          child: Image.asset(
                            'assets/images/rectangle-18-CWg.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.53 * fem,
                      ),
                      Container(
                        // autogroup2vdic4C (EaFVRD9aNYgAYwWHAM2vdi)
                        width: 130.99 * fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('Third Image');
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0 * fem,
                                    0 * fem, 0 * fem, 7 * fem),
                                width: 130.99 * fem,
                                height: 79 * fem,
                                child: Image.asset(
                                  'assets/images/rectangle-15.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Extra Image');
                              },
                              child: Container(
                                // autogroupysyxrz8 (EaFVWD1FQ5b89iDrYzYsYx)
                                width: double.infinity,
                                height: 79 * fem,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/rectangle-19-bg.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '+3',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Open Sans',
                                      fontSize: 30 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 0.6 * ffem / fem,
                                      letterSpacing:
                                      -0.2800000012 * fem,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 83.2, left: 81.2),
          child: Text(
            'Translate to the mother language',
            style: SafeGoogleFont(
              'Open Sans',
              fontSize: 11 * ffem,
              fontWeight: FontWeight.bold,
              height: 1.2575 * ffem / fem,
              letterSpacing: -0.26 * fem,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 45.2 * fem, right: 43.2),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 27 * fem,
              height: 14 * fem,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2 * fem),
                ),
                child: Image.asset(
                  'assets/images/rectangle-96-yW4.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

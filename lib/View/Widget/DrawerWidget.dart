import 'package:flutter/material.dart';

import '../../utils.dart';

class DrawerWidget extends StatelessWidget {

  final String title;
  final String icon;
  final VoidCallback action;

  const DrawerWidget(
      {super.key,

      required this.title,
      required this.icon,
      required this.action});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0018310547;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialButton(
      onPressed: action,
      child: Container(
        padding:
            EdgeInsets.fromLTRB(3.56 * fem, 13.56 * fem, 0 * fem, 13.56 * fem),
        child: Row(
          children: [
            Container(
              // width: 115 * fem,
              height: 30 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // arrowlogoutmek (3:593)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 14 * fem, 0 * fem),
                    width: 30 * fem,
                    height: 30 * fem,
                    child: Image.asset(
                      icon,
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      title,
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
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

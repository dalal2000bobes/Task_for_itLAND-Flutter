import 'package:flutter/material.dart';

class DrawerAlignWidget extends StatelessWidget {
  const DrawerAlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0018310547;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Align(
      child: SizedBox(
        width: 414 * fem,
        height: 1 * fem,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0x662e3a59),
          ),
        ),
      ),
    );
  }
}

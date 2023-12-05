import 'package:flutter/material.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: fem * 15,
        ),
        Expanded(
          flex: 8,
          child: Container(
              // padding: EdgeInsets.only(left: 30),
              // width: 132 * fem,
              height: 42 * fem,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 7.5 * fem),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  filled: true,
                  fillColor: Color(0xffffffff),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(fem * 17.3),
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(fem * 17.3),
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              )),
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {
              print("Timer");
            },
            child: Container(
              width: 42 * fem,
              height: 42 * fem,
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset(
                'assets/images/icons8-time-machine-128-1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

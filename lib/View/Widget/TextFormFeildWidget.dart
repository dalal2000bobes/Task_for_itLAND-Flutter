import 'package:flutter/material.dart';

import '../../utils.dart';

bool eye = true;

class TextFormFeildWidget extends StatefulWidget {
  final int type;
  final String title;

  const TextFormFeildWidget(
      {super.key, required this.type, required this.title});

  @override
  State<TextFormFeildWidget> createState() =>
      _TextFormFeildWidgetState(type, title);
}

class _TextFormFeildWidgetState extends State<TextFormFeildWidget> {
  final int type;
  final String title;

  _TextFormFeildWidgetState(this.type, this.title);

  TextEditingController _company = TextEditingController();

  TextEditingController get company => _company;
  TextEditingController _email = TextEditingController();

  TextEditingController get email => _email;
  TextEditingController _password = TextEditingController();

  TextEditingController get password => _password;
  TextEditingController _vPasswoard = TextEditingController();

  TextEditingController get vPasswoard => _vPasswoard;
  TextEditingController _file = TextEditingController();

  TextEditingController get file => _file;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
      padding: EdgeInsets.fromLTRB(21 * fem, 7.89 * fem, 21 * fem, 0 * fem),
      width: double.infinity,
      child: TextFormField(
        controller: (type == 1)
            ? company
            : (type == 2)
                ? email
                : (type == 3)
                    ? password
                    : (type == 5)
                        ? vPasswoard
                        : file,
        onChanged: (value) {
          print(value);
        },style: SafeGoogleFont(
        'Readex Pro',
        fontSize: 17 * ffem,
        fontWeight: FontWeight.w400,
        height: 1.25 * ffem / fem,
        color: Color(0xffffffff),
      ),
        cursorColor: Color(0x4cffffff),
        decoration: InputDecoration(

          hintText: title,
          hintStyle: SafeGoogleFont(
            'Readex Pro',
            fontSize: 15 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.25 * ffem / fem,
            color: Color(0x4cffffff),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x4cffffff),
            ),
            borderRadius: BorderRadius.circular(2 * fem),
          ),
          helperText: (type == 4) ? 'you can add multiple documents' : null,
          helperStyle: SafeGoogleFont(
            'Readex Pro',
            fontSize: 10 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.25 * ffem / fem,
            color: Color(0x4cffffff),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x4cffffff),
            ),
            borderRadius: BorderRadius.circular(2 * fem),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
            ),
            borderRadius: BorderRadius.circular(2 * fem),
          ),
          prefixIcon: (type == 4)
              ? Icon(
                  Icons.upload_file_outlined,
                  color: Color(0x4cffffff),
                )
              : null,
          enabled: (type == 4) ? false : true,
          suffixIcon: ((type == 3) || (type == 5))
              ? Icon(
                  eye
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  color: Color(0x4cffffff),
                )
              : null,
          focusColor: Color(0xffff6600),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffff6600),
            ),
            borderRadius: BorderRadius.circular(2 * fem),
          ),
        ),
        validator: (val) {
          if (val!.isNotEmpty) {
            if ((type == 2) &&
                !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                    .hasMatch(val)) {
              return 'Email is not Correct';
            } else if (((type == 3) || (type == 5)) && (val.length < 8)) {
              return 'Password most be at least 8 charecters';
            } else
              return null;
          } else {
            if (type == 1) {
              return 'Enter Company Name';
            } else if (type == 2) {
              return 'Enter Email adress';
            } else if ((type == 3) || (type == 5)) {
              return 'Enter Password';
            } else
              return null;
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:it_land_test/View/Page/HomePage.dart';

import '../../utils.dart';
import '../Widget/TextFormFeildWidget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 165 * fem,
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Sign Up',
                  style: SafeGoogleFont(
                    'Readex Pro',
                    fontSize: 37 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.25 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Row(
                  children: [
                    Text(
                      'Already have an account? ',
                      style: SafeGoogleFont(
                        'Readex Pro',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.25 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Go to Sign in Page');
                      },
                      child: Text(
                        'Sign in',
                        style: SafeGoogleFont(
                          'Readex Pro',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.25 * ffem / fem,
                          color: Color(0xffff6600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: fem * 32.7,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormFeildWidget(type: 1, title: 'Company name'),
                    TextFormFeildWidget(type: 2, title: 'Email adress'),
                    TextFormFeildWidget(type: 3, title: 'Create password'),
                    TextFormFeildWidget(type: 3, title: 'Re-enter password'),
                    GestureDetector(
                      onTap: () {
                        print('Choose multiple files');
                      },
                      child:
                          TextFormFeildWidget(type: 4, title: 'Document title'),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: 72.3 * fem,
                    left: 21 * fem,
                    right: 21 * fem,
                    bottom: 17 * fem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                          print('Register Done');
                        } else {
                          print('Register False');
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 11 * fem),
                        width: double.infinity,
                        height: 60 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffff6600),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: SafeGoogleFont(
                              'Readex Pro',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.25 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 250 * fem,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'By clicking Register, you agree to our \n',
                            style: SafeGoogleFont(
                              'Readex Pro',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.25 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Terms , Data Policy.');
                            },
                            child: Text(
                              'Terms , Data Policy.',
                              style: SafeGoogleFont(
                                'Readex Pro',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.25 * ffem / fem,
                                color: Color(0xffff6600),
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
    );
  }
}

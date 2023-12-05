import 'package:flutter/material.dart';
import 'package:it_land_test/View/Page/DrawerPage.dart';
import 'package:it_land_test/View/Page/HomePage.dart';
import 'View/Page/SignUpPage.dart';
import 'utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
			scaffoldBackgroundColor: Color(0xff022639),
		),
		// home: HomePage(),
		home : SignUpPage(),
		// home: DrawerPage(),
	);
	}
}

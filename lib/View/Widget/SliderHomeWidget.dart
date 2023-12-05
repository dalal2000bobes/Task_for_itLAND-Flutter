import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderHomeWidget extends StatelessWidget {
  const SliderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      height: fem * 172.5,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 17.2 * fem),
      child: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
          animateToClosest: true,
          autoPlay: true,
          enlargeCenterPage: true
        ),
        items: [0, 1, 2]
            .map(
              (item) => Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13.9 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        319 * fem, 12 * fem, 11.1 * fem, 0 * fem),
                    height: fem * 172.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13 * fem),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/rectangle-42-bg.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 13.2 * fem, right: 29.2),
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
                            'assets/images/rectangle-96-cap.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

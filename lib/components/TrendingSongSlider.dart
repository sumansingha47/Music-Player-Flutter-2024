import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_flutter_2024/config/Colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItem = [
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/cover.jpg"),
            fit: BoxFit.cover,
          ),
          color: divColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: divColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/music_node.svg"),
                            const SizedBox(width: 10),
                            Text(
                              "Trending",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "DJ WALA BABU",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BADSAH",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: lableColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
    return CarouselSlider(
        items: sliderItem,
        options: CarouselOptions(
          height: 320,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, value) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}

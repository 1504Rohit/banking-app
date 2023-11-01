import 'package:banking_app/screens/home_screen.dart';
import 'package:banking_app/screens/my_card_screen.dart';
import 'package:flutter/material.dart';

class PageNav extends StatelessWidget {
  const PageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [HomeScreen(), MyCard()],
    );
  }
}

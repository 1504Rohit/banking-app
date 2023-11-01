import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:banking_app/screens/chat_screen.dart';
import 'package:banking_app/screens/home_screen.dart';
import 'package:banking_app/screens/pageview_page.dart';
import 'package:banking_app/screens/states_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int pageIndex = 0;

  final pages = [
    HomeScreen(),
    const StatesPage(),
    const ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar:
            buildMyNavBar(context, Theme.of(context).cardColor),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context, Color color) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Container(
                width: mq.width * .270,
                height: 55,
                decoration: BoxDecoration(
                    gradient: pageIndex == 0
                        ? const LinearGradient(
                            colors: [Colors.yellow, Colors.green],
                            stops: [0.0, 0.7],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)
                        : LinearGradient(
                            colors: [
                                Theme.of(context).cardColor,
                                Theme.of(context).cardColor
                              ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Image.asset(
                    'assets/images/Vector.png',
                    color: pageIndex == 0
                        ? Colors.white
                        : Theme.of(context).focusColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Container(
                width: mq.width * .270,
                height: 55,
                decoration: BoxDecoration(
                    gradient: pageIndex == 1
                        ? LinearGradient(
                            colors: [Colors.yellow, Colors.pink],
                            stops: [0.0, 0.7],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)
                        : LinearGradient(
                            colors: [
                                Theme.of(context).cardColor,
                                Theme.of(context).cardColor
                              ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Image.asset(
                    'assets/images/ordinal 1.png',
                    color: pageIndex == 1
                        ? Colors.white
                        : Theme.of(context).focusColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Container(
                width: mq.width * .270,
                height: 55,
                decoration: BoxDecoration(
                    gradient: pageIndex == 2
                        ? LinearGradient(
                            colors: [
                                Colors.lightBlue.shade100,
                                Colors.blue.shade700
                              ],
                            stops: [
                                0.0,
                                0.7
                              ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)
                        : LinearGradient(
                            colors: [
                                Theme.of(context).cardColor,
                                Theme.of(context).cardColor
                              ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Image.asset(
                    'assets/images/chat.png',
                    color: pageIndex == 2
                        ? Colors.white
                        : Theme.of(context).focusColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

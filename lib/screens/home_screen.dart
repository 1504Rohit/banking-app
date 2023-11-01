import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:banking_app/screens/my_card_screen.dart';
import 'package:banking_app/screens/states_screen.dart';
import 'package:banking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_config.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MyCard(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            ThemeSwitcher.withTheme(
              builder: (context, switcher, theme) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 13,
                    bottom: 13,
                  ),
                  child: InkWell(
                    onTap: () {
                      switcher.changeTheme(
                        theme: isClicked ? darkTheme : lightTheme,
                      );
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Icon(
                        !isClicked ? Icons.light_mode : Icons.dark_mode,
                        color: Theme.of(context).focusColor,
                      )),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 13, bottom: 13, right: 10, left: 10),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Image.asset(
                    'assets/images/Ring.png',
                    color: Theme.of(context).focusColor,
                  ),
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 13, left: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(14)),
              child: Center(
                child: Image.asset(
                  'assets/images/settings 1.png',
                  color: Theme.of(context).focusColor,
                ),
              ),
            ),
          ),
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Container(
              height: 95,
              width: 95,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(14)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            image: AssetImage(
                                'assets/images/patricioshotit-n2WT4H30L9k-unsplash 1.png'))),
                  ),
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/Ellipse 3.png'))),
                  ),
                ],
              )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 20,
                ),
                Container(
                  height: 255,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total balance',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('£ 23,970.30',
                                style: Theme.of(context).textTheme.titleLarge),
                            Container(
                              height: 20,
                            ),
                            Text('This month',
                                style: Theme.of(context).textTheme.titleMedium),
                            Container(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: mq.height * .016,
                                  width: mq.height * .015,
                                  child: Image.asset('assets/images/up.png'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text('£ 5,235.25',
                                    style:
                                        Theme.of(context).textTheme.titleSmall),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: mq.height * .016,
                                  width: mq.height * .015,
                                  child: Image.asset('assets/images/down.png'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text('£ 3,710.80',
                                    style:
                                        Theme.of(context).textTheme.titleSmall),
                              ],
                            )
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 254,
                            width: 116,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/Europe travel BIG.png')),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                          ),
                          Container(
                            height: 244,
                            width: 136,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/Tokyo travel BIG.png')),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                          ),
                          GestureDetector(
                            onHorizontalDragEnd: (DragEndDetails details) {
                              if (details.primaryVelocity! > 0) {
                                // User swiped Left
                              } else if (details.primaryVelocity! < 0) {
                                // User swiped Right
                                Navigator.push(
                                    context, SlideLeftRoute(page: MyCard()));
                              }
                            },
                            // onTap: () {
                            //   Navigator.push(
                            //       context, SlideLeftRoute(page: MyCard()));
                            // },
                            child: Container(
                              height: 234,
                              width: 160,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Main card BIG.png')),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15))),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: mq.height * .044,
                  width: mq.width * .200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: mq.height * .01,
                        width: mq.width * .02,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(mq.height * .005)),
                      ),
                      Container(
                        height: mq.height * .01,
                        width: mq.width * .02,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.circular(mq.height * .005)),
                      ),
                      Container(
                        height: mq.height * .01,
                        width: mq.width * .02,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.circular(mq.height * .005)),
                      ),
                      Container(
                        height: mq.height * .01,
                        width: mq.width * .02,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.circular(mq.height * .005)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Utils().button(context,
                                  'assets/images/arrows--horizontal 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Transfer',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/currency--yen 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Exchange',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/wallet 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Payments',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/purchase 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Credits',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/percentage 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Deposits',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils()
                                  .button(context, 'assets/images/gift 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Cashback',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Utils()
                                  .button(context, 'assets/images/money 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('ATM',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/security 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Security',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils()
                                  .button(context, 'assets/images/grid 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('More',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideLeftRoute({required this.page})
      : super(
          transitionDuration: Duration(milliseconds: 700),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(2, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

import 'package:card_swiper/card_swiper.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../utils/utils.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  double value = 0;
  bool isClicked = false;
  bool calClick = false;
  ExpansionStatus _expansionStatus = ExpansionStatus.contracted;
  int swepcontroller = 0;
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  get days => null;
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Utils().CustomCard(context, 'assets/images/mainCard.png', isClicked),
      Utils().CustomCard(context, 'assets/images/tokioCard.png', isClicked),
      Utils().CustomCard(context, 'assets/images/europeCard.png', isClicked),
      Utils().CustomCard(context, 'assets/images/europeCard.png', isClicked)
    ];
    List<Widget> small = [
      Utils().smallCard(context, 'assets/images/smallMain.png', 'Main card',
          '5167 1280 3300 1299', '£ 7,907.10', 'assets/images/mastercard.png'),
      Utils().smallCard(context, 'assets/images/tokyoSmall.png', 'Tokyo travel',
          '5167 1280 3300 1299', '£ 7,907.10', 'assets/images/Visa.png'),
      Utils().smallCard(
          context,
          'assets/images/smallEurope.png',
          'Europe travel',
          '5167 1280 3300 1299',
          '£ 7,907.10',
          'assets/images/Visa.png'),
    ];
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          toolbarHeight: 75,
          elevation: 0,
          title:
              Text('My cards', style: Theme.of(context).textTheme.titleSmall),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).focusColor,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/add.png',
                    color: Theme.of(context).focusColor,
                  ),
                ),
              ),
            )
          ],
        ),
        body: ExpandableBottomSheet(
          onIsContractedCallback: () {
            setState(() {
              isClicked = false;
            });
          },
          onIsExtendedCallback: () {
            setState(() {
              isClicked = true;
            });
          },
          animationDurationExtend: Duration(seconds: 1),
          background: SafeArea(
              child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: mq.height * .002,
                ),
                Container(
                  height: mq.height * .021,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: isClicked ? 100 : 220,
                  width: mq.width,
                  child: isClicked
                      ? Container(
                          height: 100,
                          width: mq.width,
                          child: Swiper(
                            autoplay: true,
                            itemWidth: mq.width,
                            itemCount: small.length,
                            itemBuilder: (BuildContext context, int index) {
                              return small[index];
                            },
                            viewportFraction: 0.8,
                            scale: 0.8,
                          ),
                        )
                      : Swiper(
                          autoplay: true,
                          itemWidth: double.infinity,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return list[index];
                          },
                          viewportFraction: 0.8,
                          scale: 0.8,
                          onIndexChanged: (value) {
                            setState(() {
                              swepcontroller = value;
                            });
                          },
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: mq.height * .074,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for (int i = 0; i < list.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: mq.height * .01,
                              width: mq.width * .02,
                              decoration: BoxDecoration(
                                  color: swepcontroller == i
                                      ? Colors.green
                                      : Colors.grey,
                                  borderRadius:
                                      BorderRadius.circular(mq.height * .005)),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  width: mq.width * .620,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GradientText(
                                              '€ 1,700',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                              gradientType: GradientType.linear,
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              colors: const [
                                                Colors.yellow,
                                                Colors.green,
                                              ],
                                            ),
                                            Text('€ 3,400',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: mq.height * .01,
                                        child: SliderTheme(
                                          data: const SliderThemeData(
                                            thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 5,
                                            ),
                                          ),
                                          child: Slider(
                                            activeColor: Colors.green.shade400,
                                            inactiveColor: Colors.grey,
                                            value: value,
                                            onChanged: (val) {
                                              setState(() {
                                                value = val;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Month limit',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(context, 'assets/images/term.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Change PIN',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: mq.height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/snowflake 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Freeze card',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(
                                  context, 'assets/images/color-palette 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Customize',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                          Column(
                            children: [
                              Utils().button(context,
                                  'assets/images/settings--adjust 1.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Manage',
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          persistentHeader: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: isClicked
                  ? calClick
                      ? Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    calClick = false;
                                  });
                                },
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Center(
                                      child: Icon(
                                    Icons.close,
                                    color: Theme.of(context).focusColor,
                                  )),
                                ),
                              ),
                              Container(
                                width: mq.width * .64,
                                child: Center(
                                  child: Text('19 Mar - 18 Apr, 2021',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [Colors.yellow, Colors.green],
                                      stops: [0.0, 0.7],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                    child: Icon(Icons.check,
                                        color: Theme.of(context).focusColor)),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/downarrow.png',
                                    color: Theme.of(context).focusColor,
                                  ),
                                ),
                              ),
                              Container(
                                width: mq.width * .56,
                                child: Center(
                                  child: Text('07 Apr, 2021',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                child: Center(
                                  child: Image.asset(
                                      'assets/images/search 1.png',
                                      color: Theme.of(context).focusColor),
                                ),
                              ),
                              Container(
                                width: mq.width * .03,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    calClick = true;
                                  });
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  child: Center(
                                    child: Image.asset(
                                        'assets/images/calendar 1.png',
                                        color: Theme.of(context).focusColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                  : Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              height: mq.height * .024,
                              width: mq.height * .024,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Vector@2x.png',
                                  color: Theme.of(context).focusColor,
                                ),
                              ),
                            ),
                            Container(
                              width: mq.width * .08,
                            ),
                            Text('History transactions',
                                style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                      ),
                    )),
          expandableContent: Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              height: 400,
              child: calClick
                  ? Column(
                      children: [
                        Container(
                          height: 50,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('S',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('M',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('T',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('W',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('T',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('F',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('S',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ],
                          ),
                        ),
                        Container(
                          height: 350,
                          child: PagedVerticalCalendar(
                            initialDate: DateTime.now(),
                            invisibleMonthsThreshold: 1,
                            startWeekWithSunday: true,
                            onMonthLoaded: (year, month) {
                              // on month widget load
                            },
                            onDayPressed: (value) {
                              // on day widget pressed
                            },
                            onPaginationCompleted: (direction) {
                              // on pagination completion
                            },
                          ),
                        ),
                      ],
                    )
                  : ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/Airbnb logo.png'),
                          ),
                          title: Text(
                            'Airbnb',
                            style: GoogleFonts.poppins(
                                letterSpacing: -1,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            'Rental',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('- 53,937.48 ¥',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text(
                                '9:10 PM',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        );
                      })),
        ));
  }
}

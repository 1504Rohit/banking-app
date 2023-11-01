import 'package:banking_app/screens/amount_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class StatesPage extends StatefulWidget {
  const StatesPage({super.key});

  @override
  State<StatesPage> createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {
  TextEditingController cardNumberController = TextEditingController();

  var cont = 0;
  int pageno = 0;
  int clickno = 3;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
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
    List<Widget> amount = [
      Text(
        "£ 3,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 0 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
      Text(
        "£ 1,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 1 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
      Text(
        "£2,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 2 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
      Text(
        "£ 4,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 3 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
      Text(
        "£ 5,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 4 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
      Text(
        "£ 6,710.80",
        style: GoogleFonts.poppins(
            fontSize: 32,
            color: cont == 5 ? Theme.of(context).focusColor : Colors.grey,
            fontWeight: FontWeight.w700),
      ),
    ];
    final mq = MediaQuery.of(context).size;
    List<Widget> pages = [
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: mq.width * .13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text(
                      'D',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: mq.width * .13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text('W',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                Container(
                  height: 60,
                  width: mq.width * .13,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.yellow, Colors.green],
                          stops: [0.0, 0.7],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight),
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text('M',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                Container(
                  height: 60,
                  width: mq.width * .13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text('Y',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                Container(
                  height: 60,
                  width: mq.width * .13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text('All',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                Container(
                  height: 60,
                  width: mq.width * .13,
                  child: Center(
                    child: Image.asset(
                      'assets/images/calendar 1.png',
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Theme.of(context).cardColor),
                ),
              ],
            ),
            Container(
              height: 250,
              width: mq.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 0;
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: mq.width * .13,
                            height: 86,
                            decoration: BoxDecoration(
                                color: clickno == 0
                                    ? Colors.purple
                                    : Colors.purple.shade100,
                                borderRadius: BorderRadius.circular(24)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 48,
                            decoration: BoxDecoration(
                                color: clickno == 0
                                    ? Colors.green
                                    : Colors.green.shade100,
                                borderRadius: BorderRadius.circular(14.5)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 28,
                            decoration: BoxDecoration(
                                color: clickno == 0
                                    ? Colors.teal
                                    : Colors.teal.shade100,
                                borderRadius: BorderRadius.circular(14)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 24,
                            decoration: BoxDecoration(
                                color: clickno == 0
                                    ? Colors.orange
                                    : Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 15,
                            decoration: BoxDecoration(
                                color: clickno == 0
                                    ? Colors.pink
                                    : Colors.pink.shade100,
                                borderRadius: BorderRadius.circular(7.5)),
                          ),
                          Text(
                            'Jan',
                            style: GoogleFonts.poppins(
                                color: clickno == 0
                                    ? Theme.of(context).focusColor
                                    : Theme.of(context).hoverColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 1;
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: mq.width * .13,
                            height: 65,
                            decoration: BoxDecoration(
                                color: clickno == 1
                                    ? Colors.green
                                    : Colors.green.shade100,
                                borderRadius: BorderRadius.circular(24)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 42,
                            decoration: BoxDecoration(
                                color: clickno == 1
                                    ? Colors.pink
                                    : Colors.pink.shade100,
                                borderRadius: BorderRadius.circular(21)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 37,
                            decoration: BoxDecoration(
                                color: clickno == 1
                                    ? Colors.orange
                                    : Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(18.5)),
                          ),
                          Container(
                            width: mq.width * .13,
                            height: 33,
                            decoration: BoxDecoration(
                                color: clickno == 1
                                    ? Colors.teal
                                    : Colors.teal.shade100,
                                borderRadius: BorderRadius.circular(16.5)),
                          ),
                          Text(
                            'Feb',
                            style: GoogleFonts.poppins(
                                color: clickno == 1
                                    ? Theme.of(context).focusColor
                                    : Theme.of(context).hoverColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: mq.width * .13,
                          height: 82,
                          decoration: BoxDecoration(
                              color: clickno == 2
                                  ? Colors.teal
                                  : Colors.teal.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 44,
                          decoration: BoxDecoration(
                              color: clickno == 2
                                  ? Colors.indigo
                                  : Colors.indigo.shade100,
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 40,
                          decoration: BoxDecoration(
                              color: clickno == 2
                                  ? Colors.green
                                  : Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Text(
                          'May',
                          style: GoogleFonts.poppins(
                              color: clickno == 2
                                  ? Theme.of(context).focusColor
                                  : Theme.of(context).hoverColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: mq.width * .13,
                          height: 94,
                          decoration: BoxDecoration(
                              color: clickno == 3
                                  ? Colors.green
                                  : Colors.green.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 48,
                          decoration: BoxDecoration(
                              color: clickno == 3
                                  ? Colors.purple
                                  : Colors.purple.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 38,
                          decoration: BoxDecoration(
                              color: clickno == 3
                                  ? Colors.orange
                                  : Colors.orange.shade100,
                              borderRadius: BorderRadius.circular(19)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 28,
                          decoration: BoxDecoration(
                              color: clickno == 3
                                  ? Colors.teal
                                  : Colors.teal.shade100,
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        Text(
                          'Apr',
                          style: GoogleFonts.poppins(
                              color: clickno == 3
                                  ? Theme.of(context).focusColor
                                  : Theme.of(context).hoverColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: mq.width * .13,
                          height: 72,
                          decoration: BoxDecoration(
                              color: clickno == 4
                                  ? Colors.pink
                                  : Colors.pink.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 48,
                          decoration: BoxDecoration(
                              color: clickno == 4
                                  ? Colors.grey
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 35,
                          decoration: BoxDecoration(
                              color: clickno == 4
                                  ? Colors.purple
                                  : Colors.purple.shade100,
                              borderRadius: BorderRadius.circular(17.5)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 18,
                          decoration: BoxDecoration(
                              color: clickno == 4
                                  ? Colors.green
                                  : Colors.green.shade100,
                              borderRadius: BorderRadius.circular(9)),
                        ),
                        Text(
                          'May',
                          style: GoogleFonts.poppins(
                              color: clickno == 4
                                  ? Theme.of(context).focusColor
                                  : Theme.of(context).hoverColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        clickno = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: mq.width * .13,
                          height: 70,
                          decoration: BoxDecoration(
                              color: clickno == 5
                                  ? Colors.teal
                                  : Colors.teal.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 46,
                          decoration: BoxDecoration(
                              color: clickno == 5
                                  ? Colors.yellow
                                  : Colors.yellow.shade100,
                              borderRadius: BorderRadius.circular(23)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 48,
                          decoration: BoxDecoration(
                              color: clickno == 5
                                  ? Colors.pink
                                  : Colors.pink.shade100,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          width: mq.width * .13,
                          height: 28,
                          decoration: BoxDecoration(
                              color: clickno == 5
                                  ? Colors.green
                                  : Colors.green.shade100,
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        Text(
                          'Jun',
                          style: GoogleFonts.poppins(
                              color: clickno == 5
                                  ? Theme.of(context).focusColor
                                  : Theme.of(context).hoverColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: mq.height * .02,
            ),
            Container(
              height: 98,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total expenses',
                        style: Theme.of(context).textTheme.titleMedium),
                    Container(
                      height: 40,
                      child: Swiper(
                        onIndexChanged: (int) {
                          setState(() {
                            cont = int;
                          });
                        },
                        itemWidth: mq.width,
                        itemCount: amount.length,
                        itemBuilder: (BuildContext context, int index) {
                          return amount[index];
                        },
                        viewportFraction: 0.5,
                        scale: 0.7,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 294,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 72,
                    child: Row(
                      children: [
                        Container(
                          height: 49,
                          width: mq.width * .11,
                          child: Center(
                            child: Image.asset(
                              'assets/images/restaurant--fine 1.png',
                              color: Theme.of(context).focusColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: mq.width * .811,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Food',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                    Text('- 1,630.20 £',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                  ],
                                ),
                              ),
                              Container(
                                  width: mq.width * .811,
                                  height: 4,
                                  color: Colors.grey,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mq.width * .811,
                                        color: Color.fromRGBO(50, 215, 75, 1),
                                      ),
                                      Container(
                                        width: mq.width * .00,
                                        color: Colors.grey.shade400,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 72,
                    child: Row(
                      children: [
                        Container(
                          height: 49,
                          width: mq.width * .11,
                          child: Center(
                            child: Image.asset(
                              'assets/images/shopping--cart 2.png',
                              color: Theme.of(context).focusColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: mq.width * .811,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Shopping',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                    Text('- 930.70 £',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                  ],
                                ),
                              ),
                              Container(
                                  width: mq.width * .811,
                                  height: 4,
                                  color: Colors.grey,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mq.width * .405,
                                        color: Color.fromRGBO(191, 90, 242, 1),
                                      ),
                                      Container(
                                        width: mq.width * .406,
                                        color: Colors.grey.shade400,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 72,
                    child: Row(
                      children: [
                        Container(
                          height: 49,
                          width: mq.width * .11,
                          child: Center(
                            child: Image.asset(
                              'assets/images/cafe 1.png',
                              color: Theme.of(context).focusColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: mq.width * .811,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Restaurants & Cafes',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                    Text('- 710.30 £',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                  ],
                                ),
                              ),
                              Container(
                                  width: mq.width * .811,
                                  height: 4,
                                  color: Colors.grey,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mq.width * .411,
                                        color: Color.fromRGBO(255, 159, 10, 1),
                                      ),
                                      Container(
                                        width: mq.width * .400,
                                        color: Colors.grey.shade400,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 72,
                    child: Row(
                      children: [
                        Container(
                          height: 49,
                          width: mq.width * .11,
                          child: Center(
                            child: Image.asset(
                              'assets/images/medication 1.png',
                              color: Theme.of(context).focusColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: mq.width * .811,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Food',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                    Text('- 1,630.20 £',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall),
                                  ],
                                ),
                              ),
                              Container(
                                  width: mq.width * .811,
                                  height: 4,
                                  color: Colors.grey,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mq.width * .300,
                                        color: Color.fromRGBO(100, 210, 255, 1),
                                      ),
                                      Container(
                                        width: mq.width * .511,
                                        color: Colors.grey.shade400,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        height: 720,
        child: ExpandableBottomSheet(
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
            background: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text('From the card',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                Container(
                  height: 30,
                ),
                Container(
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
                ),
                Container(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    'To the card',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Container(
                  height: 30,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    padding: EdgeInsets.only(left: 22, right: 5),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 10,
                        width: mq.width * .830,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).cardColor),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: mq.width * .8,
                                child: TextFormField(
                                  showCursor: true,
                                  cursorHeight: 4,
                                  cursorColor: Theme.of(context).focusColor,
                                  controller: cardNumberController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(16),
                                    CardNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Icon(
                                        Icons.fit_screen_outlined,
                                        color: Theme.of(context).focusColor,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                'Enter card number',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey.shade500,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                        width: mq.width * .8,
                        child: Utils().smallCard(
                            context,
                            'assets/images/smallMain.png',
                            'Main card',
                            '5167 1280 3300 1299',
                            '£ 7,907.10',
                            'assets/images/mastercard.png'),
                      )
                    ],
                  ),
                )
              ],
            ),
            persistentHeader: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: mq.height * .024,
                        child: Center(
                          child: !isClicked
                              ? Image.asset(
                                  'assets/images/Vector@2x.png',
                                  color: Theme.of(context).focusColor,
                                )
                              : Container(
                                  height: 24,
                                  width: mq.height * .024,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/downarrow.png',
                                      color: Theme.of(context).focusColor,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Container(
                        width: mq.width * .08,
                      ),
                      Text('My contacts',
                          style: Theme.of(context).textTheme.titleSmall),
                      Container(
                        width: 120,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Theme.of(context).scaffoldBackgroundColor),
                        child: Center(
                          child: Image.asset(
                            'assets/images/search 1.png',
                            color: Theme.of(context).focusColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            expandableContent: Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              height: 240,
              child: ListView(
                children: [
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => AmountScreen(
                                      image: 'assets/images/girl.png',
                                      cardNum: '5812 9023 8431 1323',
                                      Name: 'Maria Callas',
                                      cardtype: 'assets/images/smallmaster.png',
                                    )));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/girl.png'),
                      ),
                      title: Text(
                        'Maria Callas',
                        style: GoogleFonts.poppins(
                            letterSpacing: -1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '5812 9023 8431 1323',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Container(
                              height: 16,
                              width: mq.width * .054,
                              child:
                                  Image.asset('assets/images/smallmaster.png'))
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).focusColor,
                      )),
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => AmountScreen(
                                      image: 'assets/images/boy.png',
                                      cardNum: '5590 1245 4510 0317',
                                      Name: 'Andrea Smith',
                                      cardtype: 'assets/images/smallvisa.png',
                                    )));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/boy.png'),
                      ),
                      title: Text(
                        'Andrea Smith',
                        style: GoogleFonts.poppins(
                            letterSpacing: -1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '5590 1245 4510 0317',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Container(
                              height: 16,
                              width: mq.width * .054,
                              child: Image.asset('assets/images/smallvisa.png'))
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).focusColor,
                      )),
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => AmountScreen(
                                      image: 'assets/images/girl2.png',
                                      cardNum: '5812 9023 8431 1323',
                                      Name: 'Alizabeth Olsin',
                                      cardtype: 'assets/images/smallmaster.png',
                                    )));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/girl2.png'),
                      ),
                      title: Text(
                        'Alizabeth Olsin',
                        style: GoogleFonts.poppins(
                            letterSpacing: -1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '5812 9023 8431 1323',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Container(
                            height: 16,
                            width: mq.width * .054,
                            child: Image.asset(
                              'assets/images/smallmaster.png',
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).focusColor,
                      )),
                ],
              ),
            )),
      )
    ];
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 56,
              width: mq.width * .960,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageno = 0;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: mq.width * .455,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: pageno == 0
                            ? const LinearGradient(
                                colors: [Colors.yellow, Colors.pink],
                                stops: [0.0, 0.7],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)
                            : LinearGradient(
                                colors: [
                                    Theme.of(context).cardColor,
                                    Theme.of(context).cardColor
                                  ],
                                stops: [
                                    0.0,
                                    0.7
                                  ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                      ),
                      child: Center(
                        child: Text(
                          'Expense',
                          style: GoogleFonts.poppins(
                              color: pageno == 0
                                  ? Colors.white
                                  : Theme.of(context).focusColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageno = 1;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: mq.width * .455,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: pageno == 1
                            ? const LinearGradient(
                                colors: [Colors.yellow, Colors.pink],
                                stops: [0.0, 0.7],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)
                            : LinearGradient(
                                colors: [
                                    Theme.of(context).cardColor,
                                    Theme.of(context).cardColor
                                  ],
                                stops: [
                                    0.0,
                                    0.7
                                  ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                      ),
                      child: Center(
                        child: Text(
                          'Income',
                          style: GoogleFonts.poppins(
                              color: pageno == 1
                                  ? Colors.white
                                  : Theme.of(context).focusColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          pages[pageno]
        ],
      )),
    ));
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write(' - '); // Add double spaces.
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

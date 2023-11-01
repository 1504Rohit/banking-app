import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  Widget CustomCard(BuildContext context, String backGround, bool isClicked) {
    final mq = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(backGround)),
          borderRadius: BorderRadius.circular(15)),
      height: 250,
      width: 370,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 88,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Main Card',
                          style: GoogleFonts.poppins(
                              letterSpacing: -1,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: isClicked ? 15 : 48,
                          width: isClicked ? 80 : 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '5167 1280 3300 1299',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '05 / 25',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: isClicked ? 16 : 36,
                    duration: Duration(milliseconds: 600),
                    child: Text(
                      '£ 7,907.10',
                      style: GoogleFonts.poppins(
                          letterSpacing: -1,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(
                                          'assets/images/Contectless.png'))),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 24,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Apple_Pay_Mark_RGB.png'))),
                            ),
                          ],
                        ),
                        Container(
                          height: 25,
                          width: 30,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image:
                                      AssetImage('assets/images/touch.png'))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/mastercard.png'))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget button(BuildContext context, String pic) {
    final mq = MediaQuery.of(context).size;
    return Container(
      width: mq.width * .280,
      height: 60,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Image.asset(
          pic,
          color: Theme.of(context).focusColor,
        ),
      ),
    );
  }

  Widget messageCard(var msg, BuildContext context, var time) {
    int l = int.parse(time.substring(11, 13));

    String noti = "AM";
    if (l > 12) {
      l = l - 12;
      noti = "PM";
    }
    int r = int.parse(time.substring(14, 16));
    final mq = MediaQuery.of(context).size;
    return Container(
      height: 100,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '$l' + ':' + '$r' + noti,
                style: TextStyle(color: Theme.of(context).focusColor),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15))),
                child: Text(
                  msg,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).focusColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget smallCard(BuildContext context, String background, String cardName,
      String cardNumber, String amount, String imageAdd) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: 250,
      width: 370,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
          color: Colors.green),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                cardName,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                cardNumber,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                amount,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Container(
                width: 52,
                height: 34,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(imageAdd),
                )),
              )
            ],
          )
        ]),
      ),
    );
  }
}

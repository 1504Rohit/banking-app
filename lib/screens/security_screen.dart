import 'package:banking_app/nav_screen.dart';
import 'package:banking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_plus_keyboard/package/pin_plus_keyboard_package.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  String pin = "";
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'))),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                ),
                Text('Security Screen',
                    style: GoogleFonts.poppins(
                        letterSpacing: -1,
                        fontSize: 25,
                        color: Theme.of(context).focusColor,
                        fontWeight: FontWeight.w600)),
                Container(
                  height: 80,
                ),
                Text('Enter your passcode',
                    style: GoogleFonts.poppins(
                        letterSpacing: -1,
                        fontSize: 20,
                        color: Theme.of(context).focusColor)),
                Container(
                  height: 30,
                ),
                Container(
                  width: mq.width * .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Fillbutton(1),
                      Fillbutton(2),
                      Fillbutton(3),
                      Fillbutton(4)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Custonbutton('1'),
                          Custonbutton('2'),
                          Custonbutton('3'),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Custonbutton('4'),
                          Custonbutton('5'),
                          Custonbutton('6'),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Custonbutton('7'),
                          Custonbutton('8'),
                          Custonbutton('9'),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.circular(35)),
                              child: Center(
                                  child: Icon(
                                Icons.fingerprint,
                                size: 52,
                                color: Colors.green.shade300,
                              )),
                            ),
                          ),
                          Custonbutton('0'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                pin = pin.substring(0, pin.length - 1);
                              });
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.circular(35)),
                              child: Center(
                                  child: Icon(
                                Icons.backspace,
                                color: Theme.of(context).focusColor,
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 150,
                ),
                Text(
                  'Forgot password?',
                  style: GoogleFonts.poppins(
                      letterSpacing: -1, fontSize: 17, color: Colors.black26),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Custonbutton(String s) {
    return InkWell(
      onTap: () {
        setState(() {
          pin += s;
          if (pin.length == 4) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => NavScreen()));
          }
        });
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(37)),
        child: Center(
          child: Text(
            s,
            style: GoogleFonts.poppins(
                fontSize: 32, color: Theme.of(context).focusColor),
          ),
        ),
      ),
    );
  }

  Widget Fillbutton(int t) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: t == pin.length ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}

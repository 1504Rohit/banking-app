import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VarificationScreen extends StatefulWidget {
  String amount;
  String userPic;
  String userNAme;
  String CArdNo;
  String cardType;
  VarificationScreen({
    Key? key,
    required this.amount,
    required this.userPic,
    required this.userNAme,
    required this.CArdNo,
    required this.cardType,
  }) : super(key: key);

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: mq.height,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/paymentBg.png'))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 52,
              ),
              Container(
                height: 74,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).focusColor,
                          )),
                      Container(
                        width: mq.height * .021,
                      ),
                      Text(
                        'Verification',
                        style: GoogleFonts.poppins(
                            color: Theme.of(context).focusColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: mq.width * .486,
                  child: Column(
                    children: [
                      Text(
                        'Sending money',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                      Text(
                        '\$' + widget.amount,
                        style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: mq.width * .486,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(widget.userPic),
                      ),
                      Text(
                        widget.userNAme,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                      Text(
                        widget.CArdNo,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                      Container(
                        width: 27,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.cardType))),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  width: mq.width * .286,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Arrow.png'))),
                ),
              ),
              Center(
                child: Container(
                  height: 100,
                  width: mq.width * .286,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Touch ID.png',
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: mq.width * .786,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '     Touch ID sensor \nto verify transaction',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).focusColor),
                        ),
                      ),
                      Text(
                        'Please verify your identity',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

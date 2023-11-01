import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:banking_app/screens/varification_screen.dart';

class AmountScreen extends StatefulWidget {
  String image;
  String cardNum;
  String Name;
  String cardtype;
  AmountScreen({
    Key? key,
    required this.image,
    required this.cardNum,
    required this.Name,
    required this.cardtype,
  }) : super(key: key);

  @override
  State<AmountScreen> createState() => _AmountScreenState();
}

class _AmountScreenState extends State<AmountScreen> {
  var amount = TextEditingController();
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
                image: AssetImage('assets/images/amountBg.png'))),
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
                        'Amount',
                        style: GoogleFonts.poppins(
                            color: Theme.of(context).focusColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 52,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(widget.image),
                    ),
                    title: Text(
                      widget.Name,
                      style: GoogleFonts.poppins(
                          letterSpacing: -1,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          widget.cardNum,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        Container(
                            height: 16,
                            width: mq.width * .054,
                            child: Image.asset(widget.cardtype))
                      ],
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).focusColor,
                    )),
              ),
              Container(
                height: 152,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Available:',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                      Text(
                        '\$ 3,150.70',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$',
                        style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).focusColor),
                      ),
                      IntrinsicWidth(
                        child: TextFormField(
                          controller: amount,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          cursorColor: Theme.of(context).focusColor,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          style: GoogleFonts.poppins(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).focusColor),
                        ),
                      ),
                      Text(
                        '.00',
                        style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).focusColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Commission:',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                      Text(
                        '\$ 3.30',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).focusColor),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => VarificationScreen(
                          amount: amount.text.toString(),
                          userPic: widget.image,
                          userNAme: widget.Name,
                          CArdNo: widget.cardNum,
                          cardType: widget.cardtype,
                        )));
            // if (amount.text.toString().isNotEmpty) {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (_) => VarificationScreen(
            //                 amount: amount.text.toString(),
            //               )));
            // } else {
            //   Fluttertoast.showToast(
            //       msg: "Please Enter Some Amount To Procede Further",
            //       toastLength: Toast.LENGTH_SHORT,
            //       gravity: ToastGravity.CENTER,
            //       timeInSecForIosWeb: 1,
            //       backgroundColor: Colors.green,
            //       textColor: Colors.white,
            //       fontSize: 16.0);
            // }
          },
          child: Container(
            width: mq.width * .980,
            height: mq.height * .068,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.green],
                  stops: [0.0, 0.7],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: mq.width * .25,
                  ),
                  Text(
                    'Send money',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Container(
                    width: mq.width * .2,
                  ),
                  const Icon(
                    Icons.arrow_circle_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

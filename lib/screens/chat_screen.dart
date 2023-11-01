import 'package:banking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var message = TextEditingController();

  var _listMessage = ["hello"];
  var _listTime = ["2023-09-13 12:00:123445"];
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        toolbarHeight: 75,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/boy.png'),
          ),
        ),
        title: Text(
          'Support',
          style: GoogleFonts.poppins(
              color: Theme.of(context).focusColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
            child: Container(
              height: mq.height * .055,
              width: mq.height * .055,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(14)),
              child: Center(
                  child: Icon(
                Icons.more_vert,
                color: Theme.of(context).focusColor,
              )),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: mq.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _listMessage.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onDoubleTap: () {
                          setState(() {
                            _listMessage.remove(_listMessage[index]);
                            _listTime.remove(_listTime[index]);
                          });
                        },
                        child: Utils().messageCard(
                            _listMessage[index], context, _listTime[index]),
                      );
                    }),
              ),
            ),
            Container(
              height: 76,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/attachment 1.png',
                          color: Theme.of(context).focusColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: mq.width * .500,
                          height: 50,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: message,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintStyle: GoogleFonts.poppins(
                                    color: Theme.of(context).focusColor),
                                hintText: 'Type here...',
                                border: InputBorder.none),
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).focusColor),
                          ),
                        ),
                      ],
                    ),
                    message.text.isNotEmpty
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _listTime.add(DateTime.now().toString());
                                _listMessage.add(message.text.toString());
                                message.clear();
                              });
                            },
                            child: Container(
                              height: 50,
                              width: mq.width * .12,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/send--alt--filled 1.png')),
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(
                                      colors: [Colors.yellow, Colors.green],
                                      stops: [0.0, 0.7],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight)),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

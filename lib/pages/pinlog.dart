import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//test
class PinLogin extends StatefulWidget {
  const PinLogin({super.key});

  @override
  State<PinLogin> createState() => _PinLoginState();
}

class _PinLoginState extends State<PinLogin> {
  var _number = "";

  Icons? icon;

  var _password = "______";

  Widget builditem({
    required String number,
    required String label,
    Color color = Colors.black,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          //_text = label;
          _number = number;
          _password = _password.replaceFirst('_', _number);
        });
      },
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF808080)),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number,
                    style: GoogleFonts.roboto(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    label,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList = [
      builditem(
        number: "1",
        label: "one",
      ),
      builditem(
        number: "2",
        label: "two",
      ),
      builditem(
        number: "3",
        label: "three",
      ),
      builditem(
        number: "4",
        label: "four",
      ),
      builditem(
        number: "5",
        label: "five",
      ),
      builditem(
        number: "6",
        label: "six",
      ),
      builditem(
        number: "7",
        label: "seven",
      ),
      builditem(
        number: "8",
        label: "eight",
      ),
      builditem(
        number: "9",
        label: "nine",
      ),
      builditem(
        number: "0",
        label: "zero",
      ),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.security,
              size: 90,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'PIN LOGIN',
              style:
                  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            Expanded(child: Container()),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(_icon, size: 100.0),
                  Text(
                    _password,
                    style: GoogleFonts.roboto(
                      color: Color(0xFF808080),
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[0],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[1],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[2],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[3],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[4],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[5],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[6],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[7],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[8],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _password = "______";
                          });
                        },
                        child: Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    itemList[9],
                    SizedBox(
                      width: 40,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (_password.isNotEmpty) {
                              int lastindex =
                                  _password.lastIndexOf(RegExp('[^_]'));
                              if (lastindex != -1) {
                                _password = _password.replaceRange(
                                    lastindex, lastindex + 1, '_');
                              }
                            } else {
                              _password = "______";
                            }
                          });
                        },
                        child: Icon(Icons.backspace_outlined,
                            size: 40, color: Colors.black)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

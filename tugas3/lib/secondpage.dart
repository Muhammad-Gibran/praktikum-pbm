import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 245, 214),
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Gibran",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 224, 222, 222),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 3,
                            width: 20,
                            color: Color.fromARGB(255, 247, 245, 245),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 245, 247, 246),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 230, 231, 231),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                FontAwesomeIcons.close,
                color: Colors.white,
              ))
        ]),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 181, 255, 167),
                  Color.fromARGB(255, 67, 150, 29),
                ])),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    'img/Wiz.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "7 bahasa pemrograman yang paling terkenal",
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "23 menit",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.play,
                              color: Color.fromARGB(255, 58, 245, 214),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Putar",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 58, 245, 214)),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

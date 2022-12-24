import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'secondpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tugas UI PBM",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Color.fromARGB(255, 254, 183, 183),
          title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(Icons.close),
          ]),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 183, 237, 254),
                    Colors.white,
                  ])),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 25),
                            width: 200,
                            height: 80,
                            child: Text(
                              "Buat Akun",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 87, 16, 16),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // Color.fromARGB(255, 236, 236, 236)
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          label: Text(
                            "Nama",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 131, 131, 131)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          label: Text(
                            "Tanggal lahir",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 131, 131, 131)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          label: Text(
                            "Tempat Tinggal",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 131, 131, 131)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text("atau masuk dengan",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 131, 131, 131),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.facebook,
                              size: 30,
                              color: Color.fromARGB(255, 87, 16, 16),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              FontAwesomeIcons.google,
                              size: 30,
                              color: Color.fromARGB(255, 87, 16, 16),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              FontAwesomeIcons.twitter,
                              size: 30,
                              color: Color.fromARGB(255, 87, 16, 16),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: Color.fromARGB(255, 255, 142, 134),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondPage()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

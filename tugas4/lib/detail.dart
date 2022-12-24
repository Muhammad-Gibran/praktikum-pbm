import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4/model.dart';

class DetailPage extends StatelessWidget {
  final Mobil mobil;

  const DetailPage({
    super.key,
    required this.mobil,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.red.shade500,
      ),
      backgroundColor: Colors.red.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(mobil.gambar),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      mobil.title,
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 49, 49)),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                        text: WidgetSpan(
                            child: Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: 19,
                    ))),
                    Text(
                      "${mobil.rating}",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color.fromARGB(255, 46, 44, 44)),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 68, 66, 66),
                          size: 40,
                        )),
                      ]),
                    ),
                    Text(
                      mobil.description,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 46, 45, 45)),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.phone_rounded,
                            color: Color.fromARGB(255, 68, 66, 66),
                            size: 30,
                          )),
                        ]),
                      ),
                    ),
                    Text(
                      mobil.telp,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 41, 40, 40)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4/detail.dart';
import 'package:tugas4/model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              text: "Sewa Mobil",
            ),
            WidgetSpan(
                child: Icon(
              Icons.king_bed_rounded,
              color: Colors.white,
            ))
          ]),
        ),
        backgroundColor: Colors.red.shade500,
      ),
      backgroundColor: Colors.red.shade200,
      body: SafeArea(
          child: ListView.builder(
        itemCount: listMobil.length,
        itemBuilder: (context, index) {
          final item = listMobil[index];
          return Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              height: 80,
              child: Card(
                elevation: 10,
                child: Center(
                  child: ListTile(
                    title: Text(item.title,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 49, 48, 48),
                            fontWeight: FontWeight.bold)),
                    leading: Container(
                      width: 80,
                      height: 80,
                      color: Colors.amber,
                      child: Image.asset(
                        "${item.gambar}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    trailing: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "${item.rating}",
                          style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 54, 53, 53),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 25,
                      ))
                    ])),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(mobil: item)),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tugas8_pbm2/Utils/globals.dart' as globals;
import 'package:tugas8_pbm2/Utils/Notifier.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.index});

  final int index;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => Fav(),
        child: Provider(
          create: (_) => index,
          child: const DeskripsiAnime(),
        ),
      ),
    );
  }
}

class DeskripsiAnime extends StatefulWidget {
  const DeskripsiAnime({super.key});

  @override
  State<DeskripsiAnime> createState() => _DeskripsiAnimeState();
}

class _DeskripsiAnimeState extends State<DeskripsiAnime> {
  @override
  Widget build(BuildContext context) {
    int index = context.read<int>();

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: Text('Detail Quotes'),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage("assets/images/headerbg.jpg"),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/Login_Icon.png")),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        globals.listchar[index],
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        globals.listanime[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(globals.listquote[index]),
                      const SizedBox(
                        height: 50,
                      ),
                      IconButton(
                        onPressed: () => context.read<Fav>().fav2(),
                        icon: context.watch<Fav>().favicon,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

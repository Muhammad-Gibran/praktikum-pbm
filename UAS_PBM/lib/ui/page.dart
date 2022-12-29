import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tugas8_pbm2/ui/details.dart';
import 'package:tugas8_pbm2/Utils/globals.dart' as globals;
import 'package:tugas8_pbm2/services/anime_services.dart';

class ListAnimeUser extends StatefulWidget {
  const ListAnimeUser({super.key});

  @override
  State<ListAnimeUser> createState() => _ListAnimeUser();
}

class _ListAnimeUser extends State<ListAnimeUser> {
  ListServices services = ListServices();
  String searchString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: Text('List Quotes'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/images/headerbg.jpg"),
              const SizedBox(
                height: 35,
              ),
              Text(
                'List Quotes',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  onChanged: (char) {
                    setState(() {
                      searchString = char.toLowerCase();
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Cari Disini...',
                    hintText: "Contoh : Araragi",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
            child: FutureBuilder(
              future: services.fetchDataList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      globals.listchar
                          .add('${snapshot.data?[index].character}');
                      globals.listanime.add('${snapshot.data?[index].anime}');
                      globals.listquote.add('${snapshot.data?[index].quote}');

                      return '${globals.listchar[index]}'
                              .toLowerCase()
                              .contains(searchString)
                          ? Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Card(
                                child: ListTile(
                                  minVerticalPadding: 24,
                                  leading: CircleAvatar(
                                    backgroundColor: Color.fromARGB(
                                        255,
                                        Random().nextInt(256),
                                        Random().nextInt(256),
                                        Random().nextInt(256)),
                                    radius: 25,
                                    child: Text(
                                      '${globals.listchar[index]}',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  title: Text('${globals.listanime[index]}'),
                                  subtitle: Text('${globals.listquote[index]}'),
                                  isThreeLine: true,
                                  trailing: IconButton(
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage(index: index))),
                                      icon: Icon(Icons.read_more)),
                                ),
                              ),
                            )
                          : Container();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return '${globals.listchar[index]}'
                              .toLowerCase()
                              .contains(searchString)
                          ? Container()
                          : Container();
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

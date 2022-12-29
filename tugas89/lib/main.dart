import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugas8_pbm2/ui/login.dart';
import 'Utils/saveload_data.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ByteData data =
      await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());

  await SaveLoad.init();
  runApp(const ListAnime());
}

class ListAnime extends StatefulWidget {
  const ListAnime({super.key});

  @override
  State<ListAnime> createState() => _ListAnimeState();
}

class _ListAnimeState extends State<ListAnime> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyAppStateManagement());
  }
}

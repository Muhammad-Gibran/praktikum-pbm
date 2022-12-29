import 'package:flutter/material.dart';
import 'package:tugas8_pbm2/Utils/saveload_data.dart';
import 'package:tugas8_pbm2/ui/page.dart';
import 'package:tugas8_pbm2/Utils/Notifier.dart';
import 'package:provider/provider.dart';

class MyAppStateManagement extends StatelessWidget {
  const MyAppStateManagement({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ChangeNotifierProvider(
        create: (_) => Hide(),
        child: const LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String nama = '';

  @override
  void initState() {
    super.initState();

    nama = SaveLoad.getUsername() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 250,
                  child: Image(
                    image: AssetImage("assets/images/Login_Icon.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Masukkan data dibawah untuk melanjutkan",
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                  child: Card(
                    child: TextFormField(
                      initialValue: nama,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        hintText: "Contoh : Farhan kebab",
                      ),
                      onChanged: (nama) => setState(() => {this.nama = nama}),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Card(
                    child: TextField(
                      obscureText: context.watch<Hide>().hide,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () => context.read<Hide>().hide2(),
                            icon: context.watch<Hide>().eye),
                        prefixIcon: const Icon(Icons.lock),
                        labelText: "Password",
                        hintText: "Contoh : Kebab009#",
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Lupa Password..?',
                  style: TextStyle(color: Colors.blue),
                ),
                Container(
                    width: 80,
                    height: 40,
                    margin: const EdgeInsets.all(50),
                    child: ElevatedButton(
                      onPressed: () async {
                        await SaveLoad.setUsername(nama);
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const ListAnimeUser();
                          },
                        ));
                      },
                      child: const Text("Login"),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:uts_mobileprog/katalog_hijab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HIJABI',
      theme: ThemeData(primaryColor: Colors.red),
      home: UTS(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class UTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 181, 194, 196),
        title: const Text(
          'HIJABI By Nisa',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.account_circle),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                        color: Colors.white,
                        child: Center(
                            child: Image.asset("assets/logo_hijabi.png")))),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.account_box),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1,
                              ),
                            ),
                            hintText: "Nama Pengguna",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 78, 37, 240)),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.password),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 28, 20, 190),
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            hintText: "Kata Kunci",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 78, 37, 240)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            color: Colors.white,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => katalog_hijab()));
                              },
                              child: const Text('Masuk'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.topCenter,
                            color: Colors.white,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UTS()));
                              },
                              child: const Text('Register'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            color: Colors.yellow,
                            child: const Text("Login"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                            child: const Center(
                              child: Text("Register"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), */
              ],
            ),
          ), /*
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        color: Colors.black12,
                        child: const Center(child: Text("Hijab Pashmina")))),
                Expanded(
                    child: Container(
                        color: Colors.orange,
                        child: const Center(child: Text("Hijab Segi Empat")))),
                Expanded(
                    child: Container(
                        color: Colors.green,
                        child: const Center(child: Text("Hijab Bergo")))),
              ],
            ),
          ),
        */
        ],
      ),
    );
  }
}

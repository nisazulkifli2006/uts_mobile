import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uts_mobileprog/katalog_hijab.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class detail_hijab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int rand(int min, int max) {
      return min + Random().nextInt(max - min);
    }

    int gambar = rand(1, 3);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [Icon(Icons.add_shopping_cart)],
        backgroundColor: Colors.green,
        title: const Text(
          'DETAIL HIJAB',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.asset('assets/img/hijab$gambar.jpeg'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.white,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Bahan dan Ukuran Hijab',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nHijab syari yang nyaman dengan bahan berkualitas, tersedia ukuran standar, jumbo hingga super jumbo.\n',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      const Expanded(child: Text('')),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.white,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => katalog_hijab()));
                            },
                            child: const Text('Maju'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: const Text(
                            '\n1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
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
                                      builder: (context) => detail_hijab()));
                            },
                            child: const Text('Mundur'),
                          ),
                        ),
                      ),
                      const Expanded(child: Text('')),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: Colors.white,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detail_hijab()));
                      },
                      child: const Text('Kembali'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

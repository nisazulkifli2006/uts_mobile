import 'package:flutter/material.dart';
import 'package:uts_mobileprog/detail_hijab.dart';
import 'dart:math';

// ignore: use_key_in_widget_constructors, camel_case_types
class katalog_hijab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.add_shopping_cart)],
        backgroundColor: Colors.green,
        title: const Text(
          'KATALOG HIJAB',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          int rand(int min, int max) {
            return min + Random().nextInt(max - min);
          }

          int gambar = rand(1, 4);
          //String gambarin = 'assets/img/menu$gambar.jpg';
          var ran = rand(2, 30) * 5000;

          return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: Image.asset('assets/img/hijab$gambar.jpeg'),
                title: Text(
                  "Hijab $index",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: const Text(
                  "-",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  "Rp. $ran",
                  style: const TextStyle(color: Colors.green, fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => detail_hijab()));
                },
              ));
        },
      ),
    );
  }
}

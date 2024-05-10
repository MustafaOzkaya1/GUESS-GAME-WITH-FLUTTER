import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahmin_uygulamasi/view/lose_page.dart';
import 'package:tahmin_uygulamasi/view/win_page.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  TextEditingController tahmin = TextEditingController();
  int rndSayi = Random().nextInt(100);
  int cnt = 5;
  String yardim1 = "";

  void yardim(int? guess) {
    if (guess == null) return;

    if (cnt == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LosePage()));
    } else if (rndSayi == guess) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => WinPage()));
    } else if (rndSayi < guess) {
      setState(() {
        yardim1 = "Tahmini Azalt";
        cnt--;
      });
    } else if (rndSayi > guess) {
      setState(() {
        yardim1 = "Tahmini Arttır";
        cnt--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Oyun Başlasın",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Kalan Hak: $cnt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),

            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Yardım: $yardim1", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              ],
            ),

            TextField(
              controller: tahmin,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Tahmininizi girin",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (tahmin.text.isNotEmpty) {
                  int? guess = int.tryParse(tahmin.text);
                  yardim(guess);
                }
                tahmin.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Text(
                "Tahmin",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahmin_uygulamasi/view/homepage.dart';

class WinPage extends StatefulWidget {
  const WinPage({super.key});

  @override
  State<WinPage> createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.grey,


      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.mood_sharp,size: 200,
            ),
            ElevatedButton(onPressed: (
                ){
              Navigator.of(context).popUntil((route) => route.isFirst);

            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),

                ),
                child: Text("Tekrar Dene" , style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
            ),
          ],
        ),
      ),
    );
  }
}

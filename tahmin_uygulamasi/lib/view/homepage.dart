import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahmin_uygulamasi/view/game_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Oyunu", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.grey,


      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.question_mark_sharp,size: 200,
            ),
            ElevatedButton(onPressed: (
                ){
              Navigator.push(context,MaterialPageRoute(builder: (context) => GamePage()));
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),

                ),
                child: Text("Oyuna Başla" , style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
            ),
          ],
        ),
      ),
    );
  }
}

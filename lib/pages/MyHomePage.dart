import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        title: Text('Smartphone Products',style: TextStyle(color: Colors.white,fontSize: 18),),centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800]
              ),
              child: Center(child: Text('8'),),
            ),
          )

        ],

      ),drawer: Drawer(),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Container(
              


            )
          ],
        ),
      ),


    );
  }
}

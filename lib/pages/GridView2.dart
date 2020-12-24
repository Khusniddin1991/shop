import 'package:flutter/material.dart';


class GridView2 extends StatefulWidget {

  static final String id='GridView2';
  @override
  _GridView2State createState() => _GridView2State();
}

class _GridView2State extends State<GridView2> {
  var _lists=[
    'asset/images/image.jpg',
    'asset/images/image1.jpg',
    'asset/images/image2.png',
    'asset/images/image3.jpg',
    'asset/images/image4.jpg',
    'asset/images/image6.jpg',
    'asset/images/image7.jpg',
    'asset/images/image8.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,children:List.generate( _lists.length,(index) =>
    Container(
      margin: EdgeInsets.all(20),
      child: Card(child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_lists[index])
          )
        ),



      ),),
    )


    ),);
  }
}

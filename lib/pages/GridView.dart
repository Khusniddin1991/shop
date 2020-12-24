import 'package:flutter/material.dart';


class GridViews extends StatefulWidget {

  static final String id='GridView';
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridViews> {
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
    return GridView.count(crossAxisCount: 1,children:List.generate( _lists.length,(index) =>
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(10),
            height: 240,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(_lists[index]),
                  fit: BoxFit.fill
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.favorite,color: Colors.red ,)
                ],
              ),
            ),
          ),
        ),


    ),);
  }
}


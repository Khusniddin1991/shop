import 'package:flutter/material.dart';
import 'package:shop/pages/GridView.dart';
import 'package:shop/pages/GridView2.dart';
import 'package:shop/pages/MyHomePage.dart';

main(){

  runApp(MaterialApp(home: MyHomePage(),debugShowCheckedModeBanner: false,routes: {
    GridViews.id:(ctx)=>GridViews(),
    GridView2.id:(ctx)=>GridView2()

  },),);

}




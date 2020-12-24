import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/GridView.dart';
import 'package:shop/pages/GridView2.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepOrange,
        title: Text('Smartphone Products',style: TextStyle(color: Colors.white,fontSize: 18),),centerTitle: true,
        actions: [
          InkWell(
            onTap: (){print('there you go');},
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 30,
                width: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800]
                ),
                child: Center(child:Icon(Icons.shopping_basket,color: Colors.pink,)),
              ),
            ),
          )

        ],
        // kattalashttirb kuringchi.
      //  Cardni bir xil GridView da foydalangan qulay chunki elementlar orasini ochish ancha qulay mainAxisSpacing,crossAxisSpacing kabi qilymatlari bor

      ),drawer: Drawer(),
      backgroundColor: Colors.deepOrange,
      body:Column(children: [
        Container(
          height:250,
          child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:_lists.length,itemBuilder:(ctx,index){
            return  Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              width:MediaQuery.of(context).size.width,
              height:250 ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(_lists[index]),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin:Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.1)]
                    )
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.end,

                    children: [
                      Text('LifeStyle Sale',style:TextStyle(color: Colors.white,fontSize: 35)),
                      SizedBox(height: 30,),
                      InkWell(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),child: Center(
                            child: Text('Shop now'),
                          ),)),

                      // another part
                    ],
                  ),
                ),
              ),
            );


          }),

        ),
        SizedBox(height: 10,),

        Expanded(child: Container(


          child: PageView(
          children: [

              GridViews(),
            GridView2()

          ],
        ),))
      ],),
      );



  }
}

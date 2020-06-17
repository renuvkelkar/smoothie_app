import 'package:flutter/material.dart';
import 'package:smoothieapp/model/smoothie.dart';
class SmoothDetail extends StatefulWidget {
  final Smoothie smoothie;


  const SmoothDetail({Key key, this.smoothie}) : super(key: key);@override
  _SmoothDetailState createState() => _SmoothDetailState();
}

class _SmoothDetailState extends State<SmoothDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.smoothie.name),
        backgroundColor: Color(widget.smoothie.color),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  height: screenHeight *0.7,
                  color: Color(widget.smoothie.color),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,),
                child: Column(
                  children: <Widget>[
                    Center(child: Image.asset(widget.smoothie.imagePath,
                    height: screenHeight*0.4,)),
                    SizedBox(height: 20,),
                    Text("Colories",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,

                    ),),
                    Text(widget.smoothie.calories,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 20,),
                    Align( alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Ingredients",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,

                        ),),
                      ),

                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: screenWidth,

                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(widget.smoothie.ingredient1,style: TextStyle(
                              fontSize: 18,
                              color: Color(widget.smoothie.color),
                            ),),
                            Text(widget.smoothie.ingredient2,style: TextStyle(
                              fontSize: 18,
                              color: Color(widget.smoothie.color),
                            ),),
                            Text(widget.smoothie.ingredient3,style: TextStyle(
                              fontSize: 18,
                              color: Color(widget.smoothie.color),
                            ),),
                          ],
                        ),


                      ),

                    ),SizedBox(height: 20,),
                    Align( alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Description",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,

                        ),),
                      ),

                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.smoothie.description,style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),),
                    )


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

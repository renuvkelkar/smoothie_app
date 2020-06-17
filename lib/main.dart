import 'package:flutter/material.dart';
import 'package:smoothieapp/SmoothDetail.dart';
import 'package:smoothieapp/model/smoothie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF05262),
        title: Text("Smoothie Bar"),
        centerTitle: true,
      ),
      body: Container(
        height: screenHeight,
        child: ListView(
          children: <Widget>[

            Container(
              height: screenHeight,
              child: ListView.builder(
                itemCount: smoothies.length,
                  itemBuilder: (BuildContext ctxt,int index){
                  Smoothie smoothie = smoothies[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 60,left: 16,right: 16),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SmoothDetail(
                                    smoothie: smoothie,
                                  ))),
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Container(
                                    height: screenHeight*0.2,
                                    width: 400,
                                    child: Center(child: Text(smoothie.name,style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                    )),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(screenHeight*0.1),
                                      color: Color(smoothie.color),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Image.asset(smoothie.imagePath,height: screenHeight *0.2,),
                                )

                              ],
                            ),
                          ),
                        ),
                      );

              }),
            ),
          ],
        ),
      )


    );
  }
}



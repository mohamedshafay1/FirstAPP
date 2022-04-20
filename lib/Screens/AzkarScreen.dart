import 'package:flutter/material.dart';

import 'CountAzkar.dart';

class azkar_screen extends StatefulWidget {
  const azkar_screen({Key? key}) : super(key: key);

  @override
  _azkar_screenState createState() => _azkar_screenState();
}

class _azkar_screenState extends State<azkar_screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7d7d7),

      body:GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return CountAzkar();
                }));
              } ,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                shadowColor: Colors.black,
                elevation: 5,
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("ادعية الخروج من المنزل",
                      textAlign: TextAlign.center  ,
                      style: TextStyle(
                          color:Color.fromRGBO(59, 121, 55, 1),
                          fontSize: 24,
                        fontWeight:FontWeight.bold
                      ),

                    ),
                  ),
                )
                ,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية السفر ",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية الركوب",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية نزول المطر",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية الخروج من المنزل",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),
                    textAlign: TextAlign.center  ,

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية الخروج من المنزل",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),
                    textAlign: TextAlign.center  ,

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية الخروج من المنزل",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),
                    textAlign: TextAlign.center  ,

                  ),
                ),
              )
              ,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black,
              elevation: 5,
              color: Colors.black,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("ادعية الخروج من المنزل",
                    style: TextStyle(
                        color:Color.fromRGBO(59, 121, 55, 1),
                        fontSize: 24,
                        fontWeight:FontWeight.bold
                    ),
                    textAlign: TextAlign.center  ,
                  ),
                ),
              )
              ,
            ),
          ],
      ),
    );
  }
}

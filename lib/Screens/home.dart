import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  String do3aa = " سُبْحَانَ اللَّه";
  IncCount(){
    setState(() {
      count++;

    });
  }
  void CountZero(){
    setState((){
      count=0;
    });
  }
  void changeDo3aa(){
    setState(() {
      do3aa = "الْحَمْدُ للّهِ";
    });
  }
  void changeDo3aa2(){
    setState(() {
      do3aa = "للهُ أكبَرَ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7d7d7),

      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed:(){
                  changeDo3aa();
                }, child: Text("الْحَمْدُ للّهِ")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0 ),
                  child: ElevatedButton(onPressed:(){
                    changeDo3aa2();
                  } , child: Text("للهُ أكبَرَ")),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:130.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text("$do3aa" ,style: TextStyle(fontSize: 35),),
                    Text("$count" ,style: Theme.of(context).textTheme.headline3),
                    ElevatedButton(
                      onPressed:(){
                        IncCount();
                      } ,
                      child: Text("سبح"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(side: BorderSide(width: 5),
                              borderRadius: BorderRadius.all(Radius.circular(25))
                            //CircleBorder(
                            //  side: BorderSide(width: 5, color: Colors.black)
                          )
                      ),
                    ),
                    ElevatedButton(onPressed:() {
                      CountZero();
                    }, child: Text("تصفير"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10))

                    ),

                  ]

              ),
            )
          ],
        ),
      ),


    );
  }
}
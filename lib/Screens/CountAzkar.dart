import 'package:flutter/material.dart';

import 'ItemCard.dart';

class CountAzkar extends StatefulWidget {

  const CountAzkar({Key? key}) : super(key: key);

  @override
  _CountAzkarState createState() => _CountAzkarState();
}

class _CountAzkarState extends State<CountAzkar> with SingleTickerProviderStateMixin {
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
      appBar:AppBar(
        backgroundColor: const Color(0xff000000),
        title: const
        Text("  فَسَبِّحْ بِحَمْدِ رَبِّك ",
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Color.fromRGBO(59, 121, 55, 1)),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color:Color.fromRGBO(59, 121, 55, 1),
              size: 33),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(
            Icons.info_outline,
            color: Color.fromRGBO(59, 121, 55, 1),
            size: 33,)
        ],

      ) ,
      body: ListView(
        children:  [
          ItemCard("لا الله الا الله مجمد رسول الله",33),
          ItemCard("سبحان الله وبحمدة سبحان الله العظيم",33),

        ],

      ),


    );
  }
}

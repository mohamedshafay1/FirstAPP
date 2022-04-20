import 'package:flutter/material.dart';
class ItemCard extends StatefulWidget {
 String ItemText;
 int count;

 ItemCard(this.ItemText,this.count);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  var colorButton = Colors.green;
  void DecCount(){
    setState(() {
      if (widget.count>=1){
        widget.count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      shadowColor: Colors.black,
      elevation: 5,
      color: Colors.black,
      child:Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${widget.ItemText} ",
                style: TextStyle(color: Colors.white,fontSize: 24),
                textAlign: TextAlign.center,


              )
          ),
          FlatButton(onPressed: (){
            DecCount();
          }, child:
          Text("${widget.count}"),
            height: 50,
            minWidth:double.infinity,
            color: (widget.count==0)?Colors.red:Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50))),
          )
        ],
      ),

    ),);
  }
}

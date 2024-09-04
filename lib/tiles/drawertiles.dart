import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerTiles extends StatelessWidget {

  final IconData icon;
  final String text ;
  final int page ;
  final PageController controller ;
  DrawerTiles(this.icon, this.text, this.controller,this.page);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          controller.jumpToPage(page);
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: [
              Icon(icon, size: 32, color: controller.page?.round() == page ?
              Colors.lightBlueAccent: Colors.black),
              SizedBox(width: 32,),
              Text(text,style: TextStyle(
                fontSize: 16.0,
                color:   controller.page?.round() == page ?
                Colors.lightBlueAccent: Colors.black ,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class innercontainer extends StatelessWidget {

  innercontainer({@required this.color,this.childic,this.func});

  final Color color;
  final Widget childic;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child:childic,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0)
        ),

      ),
    );
  }
}
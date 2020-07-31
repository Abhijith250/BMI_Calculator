import 'package:flutter/material.dart';
import 'constants.dart';

class roundbutton extends StatelessWidget {
  roundbutton({@required this.child,@required this.tap});
  final Widget child;
  final Function tap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: inactivecolor,
      child: child,
      onPressed: tap,
    );
  }
}

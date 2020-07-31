import 'package:flutter/material.dart';
import 'constants.dart';
import 'innercontainer.dart';

class result extends StatelessWidget {
  final String state;
  final String res;
  final String mssg;
  result({@required this.res,@required this.mssg,@required this.state});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        elevation: 5.0,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 30.0,),
          Expanded(child: Text(" Aye..! Here is your result:-",style: kheadingstyle,
          )),
          Expanded(
            flex: 7,
            child:innercontainer(color: activecolor,
              childic: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(state,style: klowstyle.copyWith(color: Colors.redAccent),),
                  Text(res,style: khighstyle,),
                  Text(mssg,style: klowstyle,textAlign: TextAlign.center,)

                ],
              ),


            ),),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 40.0,
              color: Colors.redAccent,
              child: Text("Re-Calculate",style:TextStyle(fontSize: 26.0),textAlign: TextAlign.center,),
            ),
          )
        ],
      )
    );
  }
}

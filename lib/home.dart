import 'package:bmicalculate/calculator.dart';
import 'package:bmicalculate/result.dart';

import 'innercontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'roundbutton.dart';
enum gender{
  male,
  female,
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  gender selected;
  int height=160;
  int weight=60;
  int age=16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: innercontainer(
                        func: (){
                          setState(() {
                            selected=gender.male;
                          });
                        },
                        color:selected==gender.male?activecolor:inactivecolor ,
                        childic:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                                size:80.0
                            ),
                            SizedBox(height: 10.0,),
                            Text("Male",style: klowstyle)
                          ],
                        )
                      ),
                    ),

                    Expanded(
                      child:innercontainer(
                          func: (){
                            setState(() {
                              selected=gender.female;
                            });
                          },
                          color:selected==gender.female?activecolor:inactivecolor,
                          childic:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.venus,
                                size: 80.0,
                              ),
                              SizedBox(height: 10.0,),
                              Text("Female",style: klowstyle,)
                            ],
                          )
                      )
                    ),
                  ]
              ),
            ),
            Expanded(child:innercontainer(
              color: activecolor,
              childic: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Height",style: klowstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),style: khighstyle,),
                      Text("Cm",style: klowstyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.red,
                      overlayColor: Colors.white38,
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(

                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double slidevalue){
                          setState(() {
                            height=slidevalue.round();
                          });

                        }
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:innercontainer(
                        color: activecolor,
                        childic: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Weight",style: klowstyle,),
                            Text(weight.toString(),style: khighstyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                roundbutton(child: Icon(FontAwesomeIcons.minus),
                                    tap: (){
                                      setState(() {
                                        weight--;
                                      });
                                    }
                                    ),
                                SizedBox(width: 10.0,),
                                roundbutton(child: Icon(FontAwesomeIcons.plus), tap: (){
                                  setState(() {
                                    weight++;
                                  });
                                })
                              ],
                            ),

                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: innercontainer(
                        color: activecolor,
                        childic: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Age",style: klowstyle,),
                            Text(age.toString(),style: khighstyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                roundbutton(child: Icon(FontAwesomeIcons.minus),
                                    tap: (){
                                      setState(() {
                                        age--;
                                      });
                                    }
                                ),
                                SizedBox(width: 10.0,),
                                roundbutton(child: Icon(FontAwesomeIcons.plus), tap: (){
                                  setState(() {
                                    age++;
                                  });
                                }),
                              ],
                            ),

                          ],
                        ),
                      )
                    ),

                  ],
                )
            ),
            GestureDetector(
              onTap: (){
                Calculator calc=Calculator(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>result(
                    res: calc.getres(), mssg: calc.getmssg(),state: calc.getstate(),)));
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 40.0,
                color: Colors.redAccent,
                child: Text("Calculate",style:TextStyle(fontSize: 26.0),textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}



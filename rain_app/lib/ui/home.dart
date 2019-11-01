import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int num=100;
  
  void  _inc()
  {
    setState(() {
      num=num+1000;
    });

  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,

      ),
      body: new Container(
        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child:new Column(
          children: <Widget>[
            new Center(
              child: new Text("Get Rich",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 28.0,decoration: TextDecoration.none,color: Colors.green.shade700),),
            ),
            new Expanded(child: new Center(
              child: new Text("\$ $num",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 35.0,decoration: TextDecoration.none,color: num >= 5000 ? Colors.green : Colors.red ),),
            ), ),
            new Expanded(child: new Center(
              child: new FlatButton(color:Colors.green,onPressed: _inc, child: new Text("Let's Rain!",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 22.0,decoration: TextDecoration.none,color: Colors.white),),),),
            ),

          ],
        ),


      ),
    );
  }

}
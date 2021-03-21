import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double  _opacity = 1;
  double _margin = 20;
  double _width, _height = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 900),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //anim width
              ElevatedButton(
                child: Text('anim color'),
                onPressed: (){
                  setState(() {
                        _color = Colors.purple;
                  });
              },),
              //anim heght  &&  width
              ElevatedButton(onPressed: (){
                setState(() {
                  _height=700  ;
                  _width=700;
                });
              },child: Text('Anim h && w'),),


              ElevatedButton(onPressed: (){
//                child: Text('anim opacityh');
                _opacity = 0;
              }, child: Text('anim op')),

              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(milliseconds: 20),
                child: Text('disappear!!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

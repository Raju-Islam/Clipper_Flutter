import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: new HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: Container(
        child: ClipPath(
          child: new Image.asset("assets/photo.jpg"),
          clipper: new SecondCliper(),
          ),
          
      ),
    ));
  }
  
}
class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      var path=new Path();
      path.moveTo(size.width, 0.0);
      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
      return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper)=>false; 
    
  }
  class SecondCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
     var path=new Path();
     path.lineTo(0.0, size.height);
     path.lineTo(size.width, 0.0);
     path.close();
     return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;
    
  }

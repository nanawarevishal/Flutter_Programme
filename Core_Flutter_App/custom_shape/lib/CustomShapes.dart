

import 'package:flutter/material.dart';

class CustomShape extends StatefulWidget{

    @override
    State createState()=>_CustomShapeState();
}

class _CustomShapeState extends State{

    @override
      Widget build(BuildContext context){
        return Scaffold(
            body: Stack(
                children: [
                    Align(

                      child: ClipPath(
                          clipper: BottomClipper(),
                          child: Container(
                              color: kNeuMorphicColor,
                          ),
                      ),
                    )
                ],
            ),
        );
    }
}


class BottomClipper extends CustomClipper<Path>{
   @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 430;
    final double _yScaling = size.height / 149.5;
    path.lineTo(0 * _xScaling,44 * _yScaling);
    path.cubicTo(0 * _xScaling,44 * _yScaling,24.1533 * _xScaling,14.874 * _yScaling,24.1533 * _xScaling,14.874 * _yScaling,);
    path.cubicTo(38.3547 * _xScaling,-2.25125 * _yScaling,64.4021 * _xScaling,-2.91189 * _yScaling,79.4534 * _xScaling,13.4714 * _yScaling,);
    path.cubicTo(79.4534 * _xScaling,13.4714 * _yScaling,80.3319 * _xScaling,14.4276 * _yScaling,80.3319 * _xScaling,14.4276 * _yScaling,);
    path.cubicTo(94.7737 * _xScaling,30.1475 * _yScaling,119.713 * _xScaling,29.6931 * _yScaling,133.573 * _xScaling,13.4575 * _yScaling,);
    path.cubicTo(133.573 * _xScaling,13.4575 * _yScaling,133.573 * _xScaling,13.4575 * _yScaling,133.573 * _xScaling,13.4575 * _yScaling,);
    path.cubicTo(147.557 * _xScaling,-2.92345 * _yScaling,172.776 * _xScaling,-3.21409 * _yScaling,187.134 * _xScaling,12.8403 * _yScaling,);
    path.cubicTo(187.134 * _xScaling,12.8403 * _yScaling,188.125 * _xScaling,13.949 * _yScaling,188.125 * _xScaling,13.949 * _yScaling,);
    path.cubicTo(202.563 * _xScaling,30.0933 * _yScaling,227.742 * _xScaling,30.372 * _yScaling,242.533 * _xScaling,14.5512 * _yScaling,);
    path.cubicTo(242.533 * _xScaling,14.5512 * _yScaling,245.737 * _xScaling,11.1246 * _yScaling,245.737 * _xScaling,11.1246 * _yScaling,);
    path.cubicTo(259.889 * _xScaling,-4.01221 * _yScaling,284.148 * _xScaling,-3.17286 * _yScaling,297.22 * _xScaling,12.9059 * _yScaling,);
    path.cubicTo(297.22 * _xScaling,12.9059 * _yScaling,297.22 * _xScaling,12.9059 * _yScaling,297.22 * _xScaling,12.9059 * _yScaling,);
    path.cubicTo(310.485 * _xScaling,29.2215 * _yScaling,335.197 * _xScaling,29.8028 * _yScaling,349.214 * _xScaling,14.129 * _yScaling,);
    path.cubicTo(349.214 * _xScaling,14.129 * _yScaling,350.333 * _xScaling,12.8771 * _yScaling,350.333 * _xScaling,12.8771 * _yScaling,);
    path.cubicTo(364.708 * _xScaling,-3.19674 * _yScaling,389.959 * _xScaling,-2.90573 * _yScaling,403.959 * _xScaling,13.4952 * _yScaling,);
    path.cubicTo(403.959 * _xScaling,13.4952 * _yScaling,430 * _xScaling,44 * _yScaling,430 * _xScaling,44 * _yScaling,);
    path.cubicTo(430 * _xScaling,44 * _yScaling,430 * _xScaling,132 * _yScaling,430 * _xScaling,132 * _yScaling,);
    path.cubicTo(430 * _xScaling,132 * _yScaling,0 * _xScaling,132 * _yScaling,0 * _xScaling,132 * _yScaling,);
    path.cubicTo(0 * _xScaling,132 * _yScaling,0 * _xScaling,44 * _yScaling,0 * _xScaling,44 * _yScaling,);
    path.cubicTo(0 * _xScaling,44 * _yScaling,0 * _xScaling,44 * _yScaling,0 * _xScaling,44 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
        return true;
  }
    
}

const kNeuMorphicColor = Color.fromRGBO(235, 228, 229, 1);
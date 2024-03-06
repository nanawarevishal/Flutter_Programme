import 'package:custom_shape/CustomShapes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


    @override
    Widget build(BuildContext context){
      return MaterialApp(
          home: CustomShape(),
      );
    }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Shapes'),
        ),
        body: Center(
          child: Container(
                width: 400,
                height: 400,
                color:  Color.fromARGB(255, 64, 160, 238),
                child:   Stack(
                  children: [

                     Positioned(
                        top:-150,
                        right: -250,
                        child: tCircularContainer(
                            backgroundColor:  const Color.fromARGB(255, 159, 208, 248).withOpacity(.4)
                        )
                    ),
                    
                    Positioned(
                        top:150,
                        right: -250,
                        child: tCircularContainer(
                            backgroundColor:  const Color.fromARGB(255, 159, 208, 248).withOpacity(.4)
                        )
                    ),
                  ],
                ),
            ),
        )
      )
    );
  }
}


class tCircularContainer extends StatelessWidget {
  const tCircularContainer({
    super.key, 
    this.width=400, 
    this.heigth = 400, 
    this.radius =400, 
    this.padding = 0, 
    this.child, 
    required this.backgroundColor,
  });

  final double? width;
  final double? heigth;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: width,
      height: heigth,
      padding:  EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor
      ),
    );
  }
}

class tCustomCurvedEdges extends CustomClipper<Path>{
    
    @override
    Path getClip(Size size) {
        Path path = Path();

        path.lineTo(0, size.height);

        final firstCurve = Offset(0, size.height-20);
        final lastCurve = Offset(30, size.height-20);

        path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

       
        final secondCurve = Offset(0, size.height-20);
        final secondLastCurve = Offset(size.width-30, size.height-20);

        path.quadraticBezierTo(secondCurve.dx, secondCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

        final thirdCurve = Offset(size.width, size.height-20);
        final thirdlatCurve = Offset(size.width, size.height);

        path.quadraticBezierTo(thirdCurve.dx, thirdCurve.dy, thirdlatCurve.dx, thirdlatCurve.dy);

        path.lineTo(size.width, 0);
        path.close();

        return path;
    }

    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
        return true;
    }
}
class RPSCustomPainter extends CustomClipper<Path>{
         
   
    
      @override
      Path getClip(Size size) {
        Path path_0 = Path();
    path_0.moveTo(size.width*0.0025000,size.height*0.0042857);
    path_0.lineTo(size.width*0.0016667,size.height*0.5714286);
    path_0.quadraticBezierTo(size.width*0.1151667,size.height*0.1965714,size.width*0.3370000,size.height*0.2125714);
    path_0.cubicTo(size.width*0.5377083,size.height*0.3108571,size.width*0.5190833,size.height*0.5062857,size.width*0.7535000,size.height*0.5737143);
    path_0.quadraticBezierTo(size.width*0.8894167,size.height*0.5096429,size.width*1.0011667,size.height*0.2122857);
    path_0.lineTo(size.width*0.9983333,size.height*0.0028571);



          path_0.close();
          return path_0;
      }
    
      @override
      bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
        return true;
      }
  
}

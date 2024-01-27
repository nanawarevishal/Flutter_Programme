import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height) // Move to bottom-left
      ..quadraticBezierTo(
        size.width / 2,
        size.height - 50,
        size.width,
        size.height, // Quad curve to bottom-right
      )
      ..lineTo(size.width, 0); // Line to top-right

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Downward Curve at the Bottom'),
        ),
        body: Center(
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              width: 200.0,
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello Flutter!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

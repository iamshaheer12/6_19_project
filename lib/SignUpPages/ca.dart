
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CameraOverlay2 extends StatefulWidget {
  @override
  _CameraOverlayState createState() => _CameraOverlayState();
}
class _CameraOverlayState extends State<CameraOverlay2> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  double _overlayRadius = 100.0; // Adjust the radius of the circular overlay as needed

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;

    _controller = CameraController(
      camera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller!.initialize();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       
             Stack(
              children: [
                CameraPreview(_controller!),
                CustomPaint(
                  painter: CircleOverlayPainter(
                    color: Colors.red.withOpacity(0.5), // Adjust the color and opacity of the overlay as needed
                    radius: _overlayRadius,
                  ),
                ),
              ],
            ),
         
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Take a picture or perform any desired action here
        },
        child: Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}




class CircleOverlayPainter extends CustomPainter {
  final Color color;
  final double radius;

  CircleOverlayPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


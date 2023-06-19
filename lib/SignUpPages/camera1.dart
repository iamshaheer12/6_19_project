import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../color.dart';
import 'lifecameraidentity.dart';

class CameraScreen1 extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen1> {
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(
      _cameras[1], // Use the first camera in the list
      ResolutionPreset.high,
    );

    await _cameraController.initialize();

    if (!mounted) return;

    setState(() {
      _isCameraInitialized = true;
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    if (!_isCameraInitialized) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screensize.height,
            width: screensize.width,
            child: CameraPreview(_cameraController)),
      lifecameraidentity(),
         
           Center(
             child: CustomPaint(
                    painter: CircleOverlayPainter(
                      color: Colors.black.withOpacity(0.5), // Adjust the color and opacity of the overlay as needed
                      radius: 140,
                    ),
                  ),
           ),
        
        ],
      ),
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


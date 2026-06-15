import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'processing_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  List<CameraDescription>? _cameras;
  bool _isReady = false;
  bool _isFrontSide = true; // true = scanning front, false = scanning back
  String? _frontImagePath;
  String? _backImagePath;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    _cameras = await availableCameras();
    if (_cameras != null && _cameras!.isNotEmpty) {
      _controller = CameraController(_cameras![0], ResolutionPreset.high, enableAudio: false);
      await _controller!.initialize();
      if (mounted) {
        setState(() {
          _isReady = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized) return;
    
    try {
      final image = await _controller!.takePicture();
      setState(() {
        if (_isFrontSide) {
          _frontImagePath = image.path;
          _isFrontSide = false;
        } else {
          _backImagePath = image.path;
        }
      });
      
      // Proceed to processing if both sides captured
      if (_frontImagePath != null && _backImagePath != null) {
        _proceedToProcessing();
      }
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  void _proceedToProcessing() {
    if (_frontImagePath == null) return;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => ProcessingScreen(
        frontImagePath: _frontImagePath!,
        backImagePath: _backImagePath,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    if (!_isReady || _controller == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CameraPreview(_controller!),
          
          // Guideline Overlay
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.9 * 0.63, // Typical card aspect ratio
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          
          // Instruction Text
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Text(
              _isFrontSide ? 'Position FRONT of card inside the frame' : 'Position BACK of card inside the frame',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          
          // Controls
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.flash_off, color: Colors.white),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: _takePicture,
                  child: const Icon(Icons.camera_alt, color: Colors.black),
                ),
                if (!_isFrontSide)
                  TextButton(
                    onPressed: _proceedToProcessing,
                    child: const Text('Skip Back', style: TextStyle(color: Colors.white)),
                  )
                else
                  const SizedBox(width: 64),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

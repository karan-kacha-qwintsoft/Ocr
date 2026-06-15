import 'dart:io';
import 'package:flutter/material.dart';
import 'preprocessing/image_preprocessor.dart';
import 'ocr/ml_kit_ocr.dart';
import 'ocr/ocr_interface.dart';
import 'classification/card_type_classifier.dart';
import 'extraction/base_extractor.dart';
import 'extraction/business_card_extractor.dart';
import 'extraction/aadhaar_extractor.dart';
import 'extraction/wedding_card_extractor.dart';
import 'extraction/dynamic_field_extractor.dart';
import 'review_screen.dart';

class ProcessingScreen extends StatefulWidget {
  final String frontImagePath;
  final String? backImagePath;

  const ProcessingScreen({Key? key, required this.frontImagePath, this.backImagePath}) : super(key: key);

  @override
  _ProcessingScreenState createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  String _status = 'Starting processing...';
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _processCard();
  }

  Future<void> _processCard() async {
    try {
      final preprocessor = ImagePreprocessor();
      final ocr = MlKitOcrEngine();

      setState(() {
        _status = 'Preprocessing Front Image...';
        _progress = 0.2;
      });
      final frontProcessed = await preprocessor.preprocess(File(widget.frontImagePath));
      
      File? backProcessed;
      if (widget.backImagePath != null) {
        setState(() {
          _status = 'Preprocessing Back Image...';
          _progress = 0.4;
        });
        backProcessed = await preprocessor.preprocess(File(widget.backImagePath!));
      }

      setState(() {
        _status = 'Extracting Text (OCR)...';
        _progress = 0.6;
      });
      final frontBlocks = await ocr.extractText(frontProcessed);
      
      List<TextBlock> backBlocks = [];
      if (backProcessed != null) {
        backBlocks = await ocr.extractText(backProcessed);
      }

      setState(() {
        _status = 'Classification & Extraction...';
        _progress = 0.8;
      });
      final classifier = CardTypeClassifier();
      final cardType = classifier.classifyCard([...frontBlocks, ...backBlocks]);
      
      CardFieldExtractor extractor;
      switch (cardType) {
        case CardType.business:
        case CardType.visiting:
          extractor = BusinessCardExtractor();
          break;
        case CardType.aadhaar:
          extractor = AadhaarExtractor();
          break;
        case CardType.wedding:
          extractor = WeddingCardExtractor();
          break;
        case CardType.unknown:
          extractor = DynamicFieldExtractor();
          break;
      }
      
      final extractedData = await extractor.extract(frontBlocks, backBlocks);
      print('Extracted Data: ${extractedData.coreFields}');
      
      setState(() {
        _status = 'Done!';
        _progress = 1.0;
      });
      
      ocr.dispose();
      
      if (mounted) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => ReviewScreen(
            extractedData: extractedData,
            frontImagePath: widget.frontImagePath,
            backImagePath: widget.backImagePath,
          ),
        ));
      }
    } catch (e) {
      setState(() {
        _status = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Processing Card')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(value: _progress),
            const SizedBox(height: 24),
            Text(_status, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

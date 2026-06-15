import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart' as mlkit;
import 'ocr_interface.dart';

class MlKitOcrEngine implements OcrEngine {
  final mlkit.TextRecognizer _textRecognizer;

  MlKitOcrEngine() : _textRecognizer = mlkit.TextRecognizer(script: mlkit.TextRecognitionScript.devanagiri);

  Future<List<TextBlock>> processInputImage(mlkit.InputImage inputImage) async {
    final recognizedText = await _textRecognizer.processImage(inputImage);
    
    final List<TextBlock> blocks = [];
    for (mlkit.TextBlock block in recognizedText.blocks) {
      if (!RegExp(r'[\p{L}\p{N}]', unicode: true).hasMatch(block.text)) {
        continue;
      }
      blocks.add(TextBlock(
        text: block.text,
        boundingBox: Rect.fromLTRB(
          block.boundingBox.left.toDouble(),
          block.boundingBox.top.toDouble(),
          block.boundingBox.right.toDouble(),
          block.boundingBox.bottom.toDouble(),
        ),
      ));
    }
    return blocks;
  }

  @override
  Future<List<TextBlock>> extractText(File imageFile) async {
    final inputImage = mlkit.InputImage.fromFile(imageFile);
    return processInputImage(inputImage);
  }

  @override
  void dispose() {
    _textRecognizer.close();
  }
}

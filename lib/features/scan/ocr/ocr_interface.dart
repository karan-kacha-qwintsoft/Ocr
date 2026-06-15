import 'dart:io';
import 'package:flutter/material.dart';

class TextBlock {
  final String text;
  final Rect boundingBox;
  TextBlock({required this.text, required this.boundingBox});
}

abstract class OcrEngine {
  Future<List<TextBlock>> extractText(File imageFile);
  void dispose();
}

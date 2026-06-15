import 'dart:io';
import 'package:image/image.dart' as img;

class ImagePreprocessor {
  Future<File> preprocess(File imageFile) async {
    // Read the image
    final bytes = await imageFile.readAsBytes();
    img.Image? image = img.decodeImage(bytes);
    
    if (image == null) return imageFile; // fallback

    // [1] Resize to max 2048px (preserve aspect ratio)
    if (image.width > 2048 || image.height > 2048) {
      if (image.width > image.height) {
        image = img.copyResize(image, width: 2048);
      } else {
        image = img.copyResize(image, height: 2048);
      }
    }

    // Auto-rotation must happen before cropping
    image = img.bakeOrientation(image);

    // Crop to the green box (90% width, aspect ratio 0.63, centered)
    int cropW = (image.width * 0.9).toInt();
    int cropH = (cropW * 0.63).toInt();
    int cropX = (image.width - cropW) ~/ 2;
    int cropY = (image.height - cropH) ~/ 2;
    
    if (cropX >= 0 && cropY >= 0 && cropW <= image.width && cropH <= image.height) {
      image = img.copyCrop(image, x: cropX, y: cropY, width: cropW, height: cropH);
    }

    // [4] Contrast Enhancement & [5] Noise Reduction (basic using grayscale)
    image = img.grayscale(image);
    image = img.adjustColor(image, contrast: 1.5);
    
    // Save the preprocessed image
    final processedBytes = img.encodeJpg(image, quality: 90);
    final processedFile = File('${imageFile.path}_processed.jpg');
    await processedFile.writeAsBytes(processedBytes);
    
    return processedFile;
  }
}

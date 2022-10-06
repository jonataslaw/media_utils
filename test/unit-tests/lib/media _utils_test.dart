import 'package:flutter_test/flutter_test.dart';
import 'package:media_utils/media_utils.dart';

void main() {
  String videoPath = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  String imagePath = "https://images.pexels.com/photos/2872767/pexels-photo-2872767.jpeg";
  group("Example tests confirming that the extensions works", () {
    test('Should return true because the path contains any expected extension', () {
      expect(imagePath.isImage, true);
    });

    test('Should return false because the path does not contain the extension', () {
      expect(videoPath.isImage, false);
    });

    test('Should return true because the path contains any expected extension', () {
      expect(videoPath.isVideo, true);
    });

    test('Should return false because the path does not contain the extension', () {
      expect(imagePath.isVideo, false);
    });
  });
}
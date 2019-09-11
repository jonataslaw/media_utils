class MediaUtils {

  static bool isVideo(String filePath) {
    String ext = filePath.toLowerCase();
    return (((((ext.endsWith(".mp4") || ext.endsWith(".avi")) ||
        ext.endsWith(".wmv")) ||
        ext.endsWith(".rmvb")) ||
        ext.endsWith(".mpg")) ||
        ext.endsWith(".mpeg")) ||
        ext.endsWith(".3gp");
  }

  static bool isImage(String filePath) {
    String ext = filePath.toLowerCase();
    return (((ext.endsWith(".jpg") || ext.endsWith(".jpeg")) ||
        ext.endsWith(".png")) ||
        ext.endsWith(".gif")) ||
        ext.endsWith(".bmp");
  }

  static bool isAudio(String filePath) {
    String ext = filePath.toLowerCase();
    return (((ext.endsWith(".mp3") || ext.endsWith(".wav")) ||
        ext.endsWith(".wma")) ||
        ext.endsWith(".amr")) ||
        ext.endsWith(".ogg");
  }

  static bool isPpt(String filePath) {
    String ext = filePath.toLowerCase();
    return ext.endsWith(".ppt") || ext.endsWith(".pptx");
  }

  static bool isWord(String filePath) {
    String ext = filePath.toLowerCase();
    return ext.endsWith(".doc") || ext.endsWith(".docx");
  }

  static bool isExcel(String filePath) {
    String ext = filePath.toLowerCase();
    return ext.endsWith(".xls") || ext.endsWith(".xlsx");
  }

  static bool isApk(String filePath) {
    return filePath.toLowerCase().endsWith(".apk");
  }

  static bool isPdf(String filePath) {
    return filePath.toLowerCase().endsWith(".pdf");
  }

  static bool isTxt(String filePath) {
    return filePath.toLowerCase().endsWith(".txt");
  }

  static bool isChm(String filePath) {
    return filePath.toLowerCase().endsWith(".chm");
  }
}
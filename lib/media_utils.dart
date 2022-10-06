library media_utils;

List _videoExtensions = [".mp4", ".avi", ".wmv", ".rmvb", ".mpg", ".mpeg", ".3gp",];

List _imageExtensions = [".jpg", ".jpeg", ".png", ".gif", ".bmp",];

List _audioExtensions = [".mp3", ".wav", ".wma", ".amr", ".ogg",];

extension MediaUtils on String {
  bool get isVideo {
    String ext = this.toLowerCase();
    return _videoExtensions.where((element) => ext.endsWith(element)).isNotEmpty;
  }

  bool get isImage {
    String ext = this.toLowerCase();
    return _imageExtensions.where((element) => ext.endsWith(element)).isNotEmpty;
  }

  bool get isAudio {
    String ext = this.toLowerCase();
    return _audioExtensions.where((element) => ext.endsWith(element)).isNotEmpty;
  }

  bool get isPpt {
    String ext = this.toLowerCase();
    return ext.endsWith(".ppt") || ext.endsWith(".pptx");
  }

  bool get isWord {
    String ext = this.toLowerCase();
    return ext.endsWith(".doc") || ext.endsWith(".docx");
  }

  bool get isExcel {
    String ext = this.toLowerCase();
    return ext.endsWith(".xls") || ext.endsWith(".xlsx");
  }

  bool get isApk {
    String ext = this.toLowerCase();
    return ext.endsWith(".apk");
  }

  bool get isPdf {
    String ext = this.toLowerCase();
    return ext.endsWith(".pdf");
  }

  bool get isTxt {
    String ext = this.toLowerCase();
    return ext.endsWith(".txt");
  }

  bool get isChm {
    String ext = this.toLowerCase();
    return ext.endsWith(".chm");
  }
}
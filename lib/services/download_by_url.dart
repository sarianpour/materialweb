import 'dart:html' as html;

class DownloadFile {
  final String url;
  DownloadFile({this.url});
  void downloadFile() {
    html.WindowBase windowBase = html.window.open(url, 'PlaceholderName');
  }
}

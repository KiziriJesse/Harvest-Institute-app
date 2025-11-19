import 'package:flutter/material.dart';
// NOTE: This file requires you to add 'webview_flutter: ^4.2.2' (or the latest version)
// to your pubspec.yaml file and run 'flutter pub get'.
import 'package:webview_flutter/webview_flutter.dart';

class EnrollmentWebViewScreen extends StatelessWidget {
  static const String routeName = '/enrollment-webview';
  final String url;
  final String screenTitle;

  const EnrollmentWebViewScreen({
    super.key,
    required this.url,
    required this.screenTitle,
  });

  @override
  Widget build(BuildContext context) {
    // Controller for the WebView to load the URL
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          screenTitle,
          style: const TextStyle(
            color: Color(0xFF0D47A1), // Primary Blue Color (Inferred from common app themes)
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xFF1E88E5), // Back button color
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GoogleScreen extends StatelessWidget {
  const GoogleScreen({super.key});

  Future<void> openGoogle() async {
    final Uri url = Uri.parse('https://www.google.com');

    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: openGoogle,
          child: const Text('Open Google'),
        ),
      ),
    );
  }
}
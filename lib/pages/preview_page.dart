import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  final String templateName;
  final String sender;
  final String receiver;
  final String message;

  const PreviewPage({
    super.key,
    required this.templateName,
    required this.sender,
    required this.receiver,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Preview")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    templateName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("To: $receiver"),
                  const SizedBox(height: 10),
                  Text(message),
                  const SizedBox(height: 20),
                  Text("From: $sender"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

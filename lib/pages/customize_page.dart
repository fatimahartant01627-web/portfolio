import 'package:flutter/material.dart';

import '../models/template_model.dart';
import 'preview_page.dart';

class CustomizePage extends StatefulWidget {
  final TemplateModel template;

  const CustomizePage({super.key, required this.template});

  @override
  State<CustomizePage> createState() => _CustomizePageState();
}

class _CustomizePageState extends State<CustomizePage> {
  final senderController = TextEditingController();
  final receiverController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customize")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: senderController,
              decoration: const InputDecoration(labelText: "Sender Name"),
            ),
            TextField(
              controller: receiverController,
              decoration: const InputDecoration(labelText: "Receiver Name"),
            ),
            TextField(
              controller: messageController,
              decoration: const InputDecoration(labelText: "Message"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PreviewPage(
                      templateName: widget.template.title,
                      sender: senderController.text,
                      receiver: receiverController.text,
                      message: messageController.text,
                    ),
                  ),
                );
              },
              child: const Text("Preview"),
            ),
          ],
        ),
      ),
    );
  }
}

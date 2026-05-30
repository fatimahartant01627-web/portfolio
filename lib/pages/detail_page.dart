import 'package:flutter/material.dart';

import '../models/template_model.dart';
import 'customize_page.dart';

class DetailPage extends StatelessWidget {
  final TemplateModel template;

  const DetailPage({super.key, required this.template});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(
            template.image,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  template.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(template.description),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CustomizePage(template: template),
                      ),
                    );
                  },
                  child: const Text("Use Template"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

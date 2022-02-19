import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'words.dart';

class WordCard extends StatelessWidget {

  final Words word;
  final Function delete;
  WordCard({required this.word, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 0),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              word.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  word.sayer,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(width:8),

                Text(
                  word.year,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            TextButton.icon(
              onPressed: () {
                delete();
              },
              label: const Text('Delete Word'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
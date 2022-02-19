import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'words.dart';
import 'word_card.dart';

void main() {
  runApp(const MaterialApp(
    home: ExtraBonus(),
  ));
}

class ExtraBonus extends StatefulWidget {
  const ExtraBonus({Key? key}) : super(key: key);

  @override
  _ExtraBonusState createState() => _ExtraBonusState();
}

class _ExtraBonusState extends State<ExtraBonus> {

  List<Words> words = [
    Words(text: 'Give me England or I die.', sayer: 'Winston Churchill', year: '1980'),
    Words(text: 'Anyone who tries to be good at all times is bound to come to ruin among the greater number who are not.', sayer: 'Niccolo Machiavelli', year: '1990'),
    Words(text: "Don't stop running.", sayer: 'The Chaser', year: '2000')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('AMAZING WORDS'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: words.map((word) => WordCard(
          word: word,
          delete: () {
            setState(() {
              words.remove(word);
            });
          },
        )).toList(),
      ),
    );
  }
}





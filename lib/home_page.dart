import 'package:flutter/material.dart';
import 'package:flutter_speech/speech_to_text.dart';
import 'package:flutter_speech/text_to_speech.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final pages = const [
    TextToSpeechScreen(),
    SpeechToTextScreen(),
  ];

  void _selectIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _selectIndex(0);
              },
              icon: const Icon(Icons.text_snippet),
            ),
            IconButton(
              onPressed: () {
                _selectIndex(1);
              },
              icon: const Icon(Icons.speaker),
            )
          ],
        ),
      ),
    );
  }
}

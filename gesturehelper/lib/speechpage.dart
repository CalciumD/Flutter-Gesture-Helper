import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeechPage extends StatefulWidget {
  const SpeechPage({super.key});

  @override
  State<SpeechPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SpeechPage> {
  FlutterTts flutterTts = FlutterTts();

  final _textCon = TextEditingController();

  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
            TextField(
              controller: _textCon,
              decoration: InputDecoration(
                hintText: 'What would you like to say.',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      _textCon.clear();
                    },
                    icon: const Icon(Icons.clear)),
              ),
            ),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    userPost = _textCon.text;
                  });
                  flutterTts.speak(userPost);
                },
                color: Colors.red,
                child: const Text(
                  'Speak',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

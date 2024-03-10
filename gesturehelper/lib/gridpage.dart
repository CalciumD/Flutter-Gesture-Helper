import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<GridPage> {
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        childAspectRatio: 1,
        crossAxisCount: 2,
        children: [
          TextButton(
            onPressed: () {
              flutterTts.speak("Hello");
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            child: const Text(
              'Hello',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("Goodbye");
            },
            child: const Text('Goodbye', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("Happy");
            },
            child: const Text('Happy', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              flutterTts.speak("Sad");
            },
            child: const Text(
              'Sad',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              flutterTts.speak("Yes");
            },
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("No");
            },
            child: const Text('No', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("Thank You");
            },
            child: const Text('Thank you', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              flutterTts.speak("Please");
            },
            child: const Text(
              'Please',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              flutterTts.speak("Hungry");
            },
            child: const Text(
              'Hungry',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("Thirsty");
            },
            child: const Text('Thirsty', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              flutterTts.speak("You");
            },
            child: const Text('You', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              flutterTts.speak("Me");
            },
            child: const Text(
              'Me',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

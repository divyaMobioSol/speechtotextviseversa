
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:texttospeechdemo/homePage.dart';
import 'package:texttospeechdemo/speech_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum TtsState { playing, stopped, paused, continued }

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.volume_down_rounded)),
          Tab(icon: Icon(Icons.text_fields)),
          
        ],
      ),
      title: Text('Speech to text & Vise-Versa'),
    ),
    body: TabBarView(
      children: [
        HomePage(),
        FlutterSpeechText(),
       
      ],
    ),
  ),
    )
);
  }
}

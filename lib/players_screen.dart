import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text("AudioPlayer Screen",
          style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black),),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
ElevatedButton(onPressed: (){

    soundplayer();

}, child: const Text("press me"))

      ],),
    );
  }
  
  Future<void> soundplayer() async{
    String audiopath = "audio/surahfatiha.mp3";
      await player.play(AssetSource(audiopath));
    
  }
}
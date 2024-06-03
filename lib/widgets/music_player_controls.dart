// File: lib/widgets/music_player_controls.dart
import 'package:flutter/material.dart';
import '../model/song.dart';

class MusicPlayerControls extends StatelessWidget {
  final Song currentSong;
  final bool isPlaying;
  final VoidCallback onPlay;
  final VoidCallback onPause;
  final VoidCallback onStop;

  MusicPlayerControls({
    required this.currentSong,
    required this.isPlaying,
    required this.onPlay,
    required this.onPause,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Image.network(currentSong.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              currentSong.title,
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white),
            onPressed: isPlaying ? onPause : onPlay,
          ),
          IconButton(
            icon: Icon(Icons.stop, color: Colors.white),
            onPressed: onStop,
          ),
        ],
      ),
    );
  }
}

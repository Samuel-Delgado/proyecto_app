// File: lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/music_player_controls.dart';
import '../model/song.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Song? _currentSong;

  final List<Song> _songs = [
    Song(
      title: 'Song 1',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 2',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    // More songs
    Song(
      title: 'Song 3',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 4',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 5',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 6',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 1',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 2',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    // More songs
    Song(
      title: 'Song 3',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 4',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 5',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 6',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 1',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 2',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    // More songs
    Song(
      title: 'Song 3',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 4',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 5',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Song(
      title: 'Song 6',
      url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-20.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1619983081563-430f63602796?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];

  void _playMusic(Song song) async {
    await _audioPlayer.play(UrlSource(song.url));
    setState(() {
      _isPlaying = true;
      _currentSong = song;
    });
  }

  void _pauseMusic() async {
    await _audioPlayer.pause();
    setState(() {
      _isPlaying = false;
    });
  }

  void _stopMusic() async {
    await _audioPlayer.stop();
    setState(() {
      _isPlaying = false;
      _currentSong = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _songs.length,
              itemBuilder: (context, index) {
                final song = _songs[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListTile(
                    leading: Image.network(song.imageUrl,
                        width: 50, height: 50, fit: BoxFit.cover),
                    title: Text(song.title),
                    trailing: Icon(Icons.play_arrow),
                    onTap: () => _playMusic(song),
                  ),
                );
              },
            ),
          ),
          if (_currentSong != null)
            MusicPlayerControls(
              currentSong: _currentSong!,
              isPlaying: _isPlaying,
              onPlay: () => _playMusic(_currentSong!),
              onPause: _pauseMusic,
              onStop: _stopMusic,
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}

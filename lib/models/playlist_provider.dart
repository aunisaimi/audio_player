import 'package:audioplayer_yt/models/songs.dart';
import 'package:flutter/material.dart';

class PlaylistProvider extends ChangeNotifier{
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "Crazy Form",
      artistName: "Ateez",
      albumArtImagePath: "assets/images/size_m.jpg",
      audioPath: "audio/ATEEZ-Crazy-Form.mp3",
    ),
    // song 2
    Song(
      songName: "BOUNCY (K-HOT CHILI PEPPERS)",
      artistName: "Ateez",
      albumArtImagePath: "assets/images/size_l.jpg",
      audioPath: "audio/ATEEZ - BOUNCY (K-HOT CHILLI PEPPERS).mp3",
    ),
    // song 3
    Song(
      songName: "ANSWER",
      artistName: "Ateez",
      albumArtImagePath: "assets/images/answer album.jpg",
      audioPath: "audio/ATEEZ - Answer.mp3",
    )
  ];

  // current song playing index
  int? _currentSongIndex;

  /*

  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */

  set currentSongIndex(int? newIndex){

    // update current song index
    _currentSongIndex = newIndex;

    // update ui
    notifyListeners();
  }
}
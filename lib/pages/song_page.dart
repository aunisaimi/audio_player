import 'package:audioplayer_yt/components/neu_box.dart';
import 'package:audioplayer_yt/models/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider> (
        builder: (context, value, child) => Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SafeArea(
            child:Padding(padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Column(
                children: [
                  // appbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // back button
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.arrow_back_ios),
                      ),

                      // title
                      Text(" P L A Y L I S T"),

                      // menu button
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.menu),
                      ),
                    ],
                  )

                  // album artwork

                  // song duration progress

                  // playback controls
                ],
              ),
            ),
          )
        ),
    );
  }
}

import 'package:flutter/material.dart';

class Lesson5Card extends StatefulWidget {
  const Lesson5Card({
    super.key,
    required this.itemKey,
    required this.text,
    required this.audioPath,
  });

  final int itemKey;
  final String text;
  final String audioPath;

  @override
  State<Lesson5Card> createState() => _Lesson5CardState();
}

class _Lesson5CardState extends State<Lesson5Card> {
  // final AudioPlayer _audioPlayer = AudioPlayer(); // Uncomment when using audioplayers

  void _playAudio(String path) {
    // _audioPlayer.play(AssetSource(path)); // Uncomment when using audioplayers
  }

  @override
  void dispose() {
    // _audioPlayer.dispose(); // Uncomment when using audioplayers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _playAudio(widget.audioPath),
      child: Card(
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.play_arrow),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Text(
                      widget.itemKey.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Card.outlined(
                  child: Center(
                    child: Text(
                      widget.text,
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

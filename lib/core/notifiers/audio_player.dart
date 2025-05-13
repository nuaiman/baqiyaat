import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerNotifier extends StateNotifier<AudioPlayer> {
  AudioPlayerNotifier() : super(AudioPlayer());

  Future<void> play(String assetPath) async {
    try {
      await state.stop(); // Stop any current audio
      await state.setAsset(assetPath);
      await state.play();
    } catch (e) {
      if (kDebugMode) {
        print('Audio play error: $e');
      }
    }
  }

  Future<void> stop() async {
    await state.stop();
  }

  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}

// -----------------------------------------------------------------------------
final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayer>(
      (ref) => AudioPlayerNotifier(),
    );

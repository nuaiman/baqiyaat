import 'package:flutter/material.dart';
import 'package:app/core/models/tanween_model.dart';
import 'package:app/core/theme/app_palette.dart';

class TanweenCard extends StatelessWidget {
  const TanweenCard({super.key, required this.tanweenModel});

  final TanweenModel tanweenModel;

  void _playAudio(String path) {
    // TODO: Hook up actual audio playback
    // _audioPlayer.play(AssetSource(path));
  }

  Widget _buildTanweenItem(
    BuildContext context,
    String tanween,
    String audioPath,
  ) {
    return GestureDetector(
      onTap: () => _playAudio(audioPath),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5),
        ),
        child: Text(
          tanween,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppPalette.active,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Letter ID: ${tanweenModel.harfId}',
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTanweenItem(
                  context,
                  tanweenModel.dammatain,
                  tanweenModel.dammatainAudioPath,
                ),
                _buildTanweenItem(
                  context,
                  tanweenModel.kasratain,
                  tanweenModel.kasratainAudioPath,
                ),
                _buildTanweenItem(
                  context,
                  tanweenModel.fathatain,
                  tanweenModel.fathatainAudioPath,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

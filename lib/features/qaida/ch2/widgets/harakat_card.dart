import 'package:app/core/models/harakat_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_palette.dart';

class HarakatCard extends StatelessWidget {
  const HarakatCard({super.key, required this.harakatModel});

  final HarakatModel harakatModel;

  void _playAudio(String path) {
    // TODO: Hook up actual audio playback
    // _audioPlayer.play(AssetSource(path));
  }

  Widget _buildHarakatItem(
    BuildContext context,
    String harakat,
    String audioPath,
  ) {
    return GestureDetector(
      onTap: () => _playAudio(audioPath),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          // color: AppPalette.active.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5),
        ),
        child: Text(
          harakat,
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
      // elevation: 0,
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
                    'Letter ID: ${harakatModel.harfId}',
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
                _buildHarakatItem(
                  context,
                  harakatModel.dammah,
                  harakatModel.dammahAuidoPath,
                ),
                _buildHarakatItem(
                  context,
                  harakatModel.kasrah,
                  harakatModel.kasrahAuidoPath,
                ),
                _buildHarakatItem(
                  context,
                  harakatModel.fatha,
                  harakatModel.fathaAuidoPath,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

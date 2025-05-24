import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/models/harakat_model.dart';
import '../../../../core/notifiers/audio_player.dart';
import '../../../../core/theme/app_palette.dart'; // Import AppPalette for border color

class Lesson3Card extends ConsumerStatefulWidget {
  // Changed to ConsumerStatefulWidget
  const Lesson3Card({super.key, required this.harakatModel});

  final HarakatModel harakatModel;

  @override
  ConsumerState<Lesson3Card> createState() => _Lesson3CardState();
}

class _Lesson3CardState extends ConsumerState<Lesson3Card> {
  bool _isTapped = false; // State to track if the card is tapped

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Toggle the tapped state
        setState(() {
          _isTapped = !_isTapped;
        });
        // Play audio
        ref
            .read(audioPlayerProvider.notifier)
            .play(
              'assets/audio/qaida/lesson3/${widget.harakatModel.harfId}.m4a',
            );
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side:
              _isTapped // Apply border if tapped
                  ? BorderSide(
                    color: AppPalette.active,
                    width: 3.0,
                  ) // Use AppPalette.active for the border color
                  : BorderSide.none, // No border when not tapped
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Text(
                      widget.harakatModel.harfId.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card.outlined(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text(
                            widget.harakatModel.dammah,
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge?.copyWith(fontSize: 48),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card.outlined(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text(
                            widget.harakatModel.kasrah,
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge?.copyWith(fontSize: 48),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card.outlined(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text(
                            widget.harakatModel.fatha,
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge?.copyWith(fontSize: 48),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/notifiers/app_theme_notifier.dart';
import '../../../../core/notifiers/audio_player.dart';
import '../../../../core/theme/app_palette.dart'; // Ensure AppPalette is imported

class Lesson2Card extends ConsumerStatefulWidget {
  // Changed to ConsumerStatefulWidget
  const Lesson2Card({
    super.key,
    required this.itemValue,
    required this.itemKey,
  });

  final String itemValue;
  final String itemKey;

  @override
  ConsumerState<Lesson2Card> createState() => _Lesson2CardState();
}

class _Lesson2CardState extends ConsumerState<Lesson2Card> {
  bool _isTapped = false; // State to track if the card is tapped

  @override
  Widget build(BuildContext context) {
    final isLightTheme = ref.watch(appThemeNotifierProvider) == ThemeMode.light;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final scale = width / 400;

        return GestureDetector(
          onTap: () {
            // Toggle the tapped state
            setState(() {
              _isTapped = !_isTapped;
            });
            // Play audio
            ref
                .read(audioPlayerProvider.notifier)
                .play('assets/audio/qaida/lesson2/${widget.itemKey}.m4a');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20 * scale),
              side:
                  _isTapped // Apply border if tapped
                      ? BorderSide(
                        color: AppPalette.active,
                        width: 3.0 * scale,
                      ) // Use AppPalette.active for the border color
                      : BorderSide.none, // No border when not tapped
            ),
            margin: EdgeInsets.all(10 * scale),
            child: Stack(
              children: [
                // Positioned itemKey at top-right
                Positioned(
                  top: 12 * scale,
                  right: 0 * scale,
                  left: 0 * scale,
                  child: Center(
                    child: Text(
                      widget.itemKey,
                      style: TextStyle(
                        fontSize: 36 * scale,
                        fontWeight: FontWeight.w600,
                        color:
                            isLightTheme
                                ? AppPalette.lightTitle
                                : AppPalette.darkTitle,
                      ),
                    ),
                  ),
                ),
                // Main content centered
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(24 * scale),
                    child: Text(
                      widget.itemValue,
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(fontSize: 144 * scale),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/notifiers/app_theme_notifier.dart';
import '../../../../core/notifiers/audio_player.dart';
import '../../../../core/theme/app_palette.dart';

class Lesson2Card extends ConsumerWidget {
  const Lesson2Card({
    super.key,
    required this.itemValue,
    required this.itemKey,
  });

  final String itemValue;
  final String itemKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(appThemeNotifierProvider) == ThemeMode.light;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final scale = width / 400;

        return GestureDetector(
          onTap: () {
            ref
                .read(audioPlayerProvider.notifier)
                .play('assets/audio/qaida/lesson2/$itemKey.m4a');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20 * scale),
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
                      itemKey,
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
                      itemValue,
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

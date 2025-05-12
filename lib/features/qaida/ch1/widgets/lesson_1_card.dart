import 'package:app/core/enums/language_enum.dart';
import 'package:app/core/notifiers/language_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/models/harf_model.dart';
import '../../../../core/notifiers/app_theme_notifier.dart';
import '../../../../core/notifiers/audio_player.dart';
import '../../../../core/theme/app_palette.dart';

class LessonOneCard extends ConsumerWidget {
  const LessonOneCard({super.key, required this.harf});

  final Harf harf;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isBanglaSelected = ref.watch(languageProvider) == LanguageEnum.bangla;
    final isLightTheme = ref.watch(appThemeNotifierProvider) == ThemeMode.light;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final scale = width / 400;
        return Directionality(
          textDirection: TextDirection.ltr,
          child: GestureDetector(
            onTap: () {
              ref
                  .read(audioPlayerProvider.notifier)
                  .play('assets/audio/qaida/lesson1/${harf.id}.mp3');
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20 * scale),
              ),
              elevation: 0,
              margin: EdgeInsets.all(10 * scale),
              child: Padding(
                padding: EdgeInsets.all(15 * scale),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Header Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildText(
                            harf.id.toString(),
                            fontSize: 20 * scale,
                            isLightTheme: isLightTheme,
                          ),
                        ],
                      ),
                      SizedBox(height: 40 * scale),

                      // Letter Layout Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left column (start, middle, end)
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildListItem('Beginning', harf.start, scale),
                                _buildListItem('Middle', harf.mid, scale),
                                _buildListItem('Ending', harf.end, scale),
                              ],
                            ),
                          ),
                          SizedBox(width: 10 * scale),

                          // Right column (Isolated + Card)
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _buildIsolatedInfo(
                                  'Isolated',
                                  harf.arPronunciation,
                                  harf.enPronunciation,
                                  scale,
                                ),
                                SizedBox(height: 10 * scale),
                                Card.outlined(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(12 * scale),
                                      child: Text(
                                        harf.isolated,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge?.copyWith(
                                          fontSize: 100 * scale,
                                          // color: AppPalette.active,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildText(
    String text, {
    required double fontSize,
    required bool isLightTheme,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: isLightTheme ? AppPalette.lightTitle : AppPalette.darkTitle,
      ),
    );
  }

  Widget _buildListItem(String title, String value, double scale) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12 * scale,
              color: AppPalette.active,
            ),
          ),
          // SizedBox(height: 4 * scale),
          Text(
            value,
            style: TextStyle(fontSize: 42 * scale, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildIsolatedInfo(String title, String ar, String en, double scale) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12 * scale,
              color: AppPalette.active,
            ),
          ),
          SizedBox(height: 4 * scale),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ar,
                style: TextStyle(
                  fontSize: 32 * scale,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 24 * scale),
              Text(
                en,
                style: TextStyle(
                  fontSize: 24 * scale,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

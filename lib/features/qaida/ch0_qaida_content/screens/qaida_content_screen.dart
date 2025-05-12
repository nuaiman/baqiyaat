import 'package:flutter/material.dart';
import 'package:app/core/utils/navigators.dart';
import 'package:app/features/qaida/ch1/screens/lesson_1_screen.dart';
import 'package:app/features/qaida/ch1/screens/lesson_2_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/notifiers/app_theme_notifier.dart';

class QaidaContentScreen extends ConsumerWidget {
  const QaidaContentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Qaida'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(appThemeNotifierProvider.notifier).toggleTheme();
            },
            icon: Icon(Icons.light),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildChapter(
                context,
                'Chapter 1: Introduction to Arabic Letters',
                [
                  _buildLessonTile(
                    context,
                    title: 'Lesson 1: Forms of Letters',
                    onTap: () => navigateTo(context, const Lesson1Screen()),
                  ),
                  _buildLessonTile(
                    context,
                    title: 'Lesson 2: Grouped Letters',
                    onTap: () => navigateTo(context, const Lesson2Screen()),
                  ),
                ],
              ),

              // _buildChapter(context, 'Chapter 2: Vowel Marks', [
              //   _buildLessonTile(
              //     context,
              //     title: 'Lesson 3: Harakat',
              //     onTap: () => navigateTo(context, const Lesson3Screen()),
              //   ),
              //   _buildLessonTile(
              //     context,
              //     title: 'Lesson 4: Tanween',
              //     onTap: () => navigateTo(context, const Lesson4Screen()),
              //   ),
              // ]),

              // _buildChapter(context, 'Chapter 3: Sukoon and Qalqalah', [
              //   _buildLessonTile(context, title: 'Lesson 5: Sukoon'),
              //   _buildLessonTile(context, title: 'Lesson 6: Qalqalah'),
              // ]),

              // _buildChapter(context, 'Chapter 4: Shaddah (Emphasis)', [
              //   _buildLessonTile(context, title: 'Lesson 7: Shaddah'),
              // ]),

              // _buildChapter(context, 'Chapter 5: Madd (Stretching Rules)', [
              //   _buildLessonTile(context, title: 'Lesson 8: Madd Alif'),
              //   _buildLessonTile(context, title: 'Lesson 9: Madd Yaa'),
              //   _buildLessonTile(context, title: 'Lesson 10: Madd Waaw'),
              // ]),

              // _buildChapter(context, 'Chapter 6: Advanced Phonetics', [
              //   _buildLessonTile(context, title: 'Lesson 11: Idgham'),
              //   _buildLessonTile(context, title: 'Lesson 12: Ikhfa'),
              //   _buildLessonTile(context, title: 'Lesson 13: Iqlab'),
              //   _buildLessonTile(context, title: 'Lesson 14: Tafkhim'),
              //   _buildLessonTile(context, title: 'Lesson 15: Tarqiq'),
              // ]),

              // _buildChapter(context, 'Chapter 7: Noon & Meem Sakinah Rules', [
              //   _buildLessonTile(context, title: 'Lesson 16: Meem Sakinah'),
              //   _buildLessonTile(context, title: 'Lesson 17: Noon Sakinah'),
              // ]),

              // _buildChapter(context, 'Chapter 8: Hamzah Rules', [
              //   _buildLessonTile(context, title: 'Lesson 18: Hamzatul Wasl'),
              //   _buildLessonTile(context, title: 'Lesson 19: Hamzatul Qat‘'),
              // ]),

              // _buildChapter(context, 'Chapter 9: Waqf (Pausing and Stopping)', [
              //   _buildLessonTile(context, title: 'Lesson 20: Waqf'),
              // ]),

              // _buildChapter(
              //   context,
              //   'Chapter 10: Practical Tajweed Application',
              //   [
              //     _buildLessonTile(
              //       context,
              //       title: 'Lesson 21: Surah Al-Fatiha',
              //     ),
              //     _buildLessonTile(
              //       context,
              //       title: 'Lesson 21: Surah Al-Ikhlas',
              //     ),
              //     _buildLessonTile(context, title: 'Lesson 21: Surah Al-Naas'),
              //     _buildLessonTile(context, title: 'Lesson 21: Surah Al-Falaq'),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChapter(
    BuildContext context,
    String title,
    List<Widget> lessons,
  ) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            title: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
          ...lessons,
        ],
      ),
    );
  }

  Widget _buildLessonTile(
    BuildContext context, {
    required String title,
    VoidCallback? onTap,
    bool enabled = true,
  }) {
    return Card.outlined(
      child: ListTile(
        enabled: enabled,
        title: Text(title),
        onTap: enabled ? onTap : null,
      ),
    );
  }
}

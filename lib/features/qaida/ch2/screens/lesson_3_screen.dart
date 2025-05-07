import 'package:app/features/qaida/ch2/notifiers/harakats_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/lesson_3_card.dart';

class Lesson3Screen extends ConsumerWidget {
  const Lesson3Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final harakats = ref.read(harakatsProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Harakats')),
      body: ListView.builder(
        itemCount: harakats.length,
        itemBuilder: (context, index) {
          final harakt = harakats[index];
          return Lesson3Card(harakatModel: harakt);
        },
      ),
    );
  }
}

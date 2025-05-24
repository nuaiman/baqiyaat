import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/tanween_notifier.dart';
import '../widgets/lesson_4_card.dart';

class Lesson4Screen extends ConsumerWidget {
  const Lesson4Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tanweens = ref.watch(tanweensProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 4: Tanween'), centerTitle: true),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Center(child: Text('Dhammahtain'))),
              Expanded(child: Center(child: Text('Kasrahtain'))),
              Expanded(child: Center(child: Text('Fathahtain'))),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tanweens.length,
              itemBuilder: (context, index) {
                final tanween = tanweens[index];
                return Lesson4Card(tanweenModel: tanween);
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/tanween_notifier.dart';
import '../widgets/tanween_card.dart';

class TanweensScreen extends ConsumerWidget {
  const TanweensScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tanweens = ref.watch(tanweensProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Tanween')),
      body: ListView.builder(
        itemCount: tanweens.length,
        itemBuilder: (context, index) {
          final tanween = tanweens[index];
          return TanweenCard(tanweenModel: tanween);
        },
      ),
    );
  }
}

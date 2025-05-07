import 'package:app/features/qaida/ch2/notifiers/harakats_notifier.dart';
import 'package:app/features/qaida/ch2/widgets/harakat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HarakatsScreen extends ConsumerWidget {
  const HarakatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final harakats = ref.read(harakatsProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Harakats')),
      body: ListView.builder(
        itemCount: harakats.length,
        itemBuilder: (context, index) {
          final harakt = harakats[index];
          return HarakatCard(harakatModel: harakt);
        },
      ),
    );
  }
}

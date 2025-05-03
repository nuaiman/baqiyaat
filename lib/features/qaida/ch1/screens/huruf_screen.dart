import 'package:app/core/enums/layout_orientation_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/notifiers/orientation_notifier.dart';
import '../notifiers/huruf_notifier.dart';
import '../widgets/harf_card.dart';

class HurufScreen extends ConsumerWidget {
  const HurufScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final huruf = ref.watch(hurufProvider);
    final isLandscape =
        ref.watch(orientationProvider) == LayoutOrientationEnum.landscape;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Arabic Letters')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            isLandscape
                ? Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                    itemCount: huruf.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 444,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                    itemBuilder:
                        (context, index) => HarfCard(harf: huruf[index]),
                  ),
                )
                : ListView.builder(
                  itemCount: huruf.length,
                  itemBuilder: (context, index) => HarfCard(harf: huruf[index]),
                ),
      ),
    );
  }
}

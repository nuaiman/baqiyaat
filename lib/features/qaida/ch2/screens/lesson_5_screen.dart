import 'package:flutter/material.dart';

import '../widgets/lesson_5_card.dart';

class Lesson5Screen extends StatelessWidget {
  const Lesson5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> groupedData = {
      "1": {"text": "رَقَبَةٍ"},
      "2": {"text": "سُرُرٌ"},
      "3": {"text": "عَمَدٍ"},
      "4": {"text": "غَبَرَةٌ"},
      "5": {"text": "هُدًى"},
      "6": {"text": "لَهَبٍ "},
      "7": {"text": "نَخِرَةً"},
      "8": {"text": "وَسَطًا"},
      "9": {"text": "أَبَدًا"},
      "10": {"text": "طَبَقًا"},
      "11": {"text": "هُمَزَةٍ"},
      "12": {"text": "طُوًى"},
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grouped Letters with Harakat & Tanween'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          padding: const EdgeInsets.all(4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).size.width ~/ 400).toInt(),
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 1,
          ),
          itemCount: groupedData.entries.length,
          itemBuilder: (context, index) {
            final itemKey = groupedData.keys.elementAt(index);
            final itemValue = groupedData[itemKey]!['text']!;
            return Lesson5Card(itemValue: itemValue, itemKey: itemKey);
          },
        ),
      ),
    );
  }
}

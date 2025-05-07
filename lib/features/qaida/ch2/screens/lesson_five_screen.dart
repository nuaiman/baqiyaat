import 'package:flutter/material.dart';

import '../widgets/lesspn_five_card.dart';

class Lesson5Screen extends StatelessWidget {
  const Lesson5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<int, Map<String, String>> compoundLettersAndVMap = {
      1: {'text': 'عَمَدٍ', 'audioPath': ''},
      2: {'text': 'سُرُرٌ', 'audioPath': ''},
      3: {'text': 'رَقَبَةٍ', 'audioPath': ''},
      4: {'text': 'لَهَبٍ', 'audioPath': ''},
      5: {'text': 'هُدًى', 'audioPath': ''},
      6: {'text': 'غَبَرَةٌ', 'audioPath': ''},
      7: {'text': 'أَبَدًا', 'audioPath': ''},
      8: {'text': 'وَسَطًا', 'audioPath': ''},
      9: {'text': 'نَخِرَةً', 'audioPath': ''},
      10: {'text': 'طُوًى', 'audioPath': ''},
      11: {'text': 'هُمَزَةٍ', 'audioPath': ''},
      12: {'text': 'طَبَقًا', 'audioPath': ''},
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped Letters & Vowels'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          padding: const EdgeInsets.all(4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).size.width ~/ 180).toInt(),
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 1,
          ),
          itemCount: compoundLettersAndVMap.entries.length,
          itemBuilder: (context, index) {
            final itemKey = compoundLettersAndVMap.keys.elementAt(index);
            final itemValue = compoundLettersAndVMap[itemKey]!;

            return Lesson5Card(
              itemKey: itemKey,
              text: itemValue['text']!,
              audioPath: itemValue['audioPath']!,
            );
          },
        ),
      ),
    );
  }
}

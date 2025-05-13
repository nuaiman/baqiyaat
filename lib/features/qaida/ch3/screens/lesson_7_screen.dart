import 'package:flutter/material.dart';
import '../widgets/lesson_7_card.dart';

class Lesson7Screen extends StatelessWidget {
  const Lesson7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> groupedData = {
      "1": {"text": "عَدْنٍ"},
      "2": {"text": "بَرْدًا"},
      "3": {"text": "شَأْنٌ"},
      "4": {"text": "غُلْبًا"},

      "5": {"text": "حَبْلٌ"},
      "6": {"text": "كَأْسًا"},
      "7": {"text": "يُسْرًا"},
      "8": {"text": "نَفْسٍ"},

      "9": {"text": "مِسْكٌ"},
      "10": {"text": "خَلْقًا"},
      "11": {"text": "نِعْمَةٍ"},
      "12": {"text": "مُعْتَدٍ"},

      "13": {"text": "أَمْرٍ"},
      "14": {"text": "عَشْرٍ"},
      "15": {"text": "لَعِبْرَةً"},
      "16": {"text": "سُنْدُس"},

      "17": {"text": "نَشْطًا"},
      "18": {"text": "زَجْرَةٌ"},
      "19": {"text": "لُؤْلُؤًا"},
      "20": {"text": "بُكْرَةً"},

      "21": {"text": "عُذْرًا"},
      "22": {"text": "نُذْرًا"},
      "23": {"text": "عَصْفٍ"},
      "24": {"text": "ضَبْحًا"},

      "25": {"text": "خُسْرٍ"},
      "26": {"text": "كَدْحًا"},
      "27": {"text": "خُضْرٌ"},
      "28": {"text": "شَهْرٍ"},

      "29": {"text": "جَمْعًا"},
      "30": {"text": "أَكْلًا"},
      "31": {"text": "وَإِسْتَبْرَقٌ"},
      "32": {"text": "صُبْحًا"},
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sukoon with Vowels'),
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
            return Lesson7Card(itemValue: itemValue, itemKey: itemKey);
          },
        ),
      ),
    );
  }
}

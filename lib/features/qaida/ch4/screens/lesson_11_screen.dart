import 'package:flutter/material.dart';
import '../widgets/lesson_11_card.dart';

class Lesson11Screen extends StatefulWidget {
  const Lesson11Screen({super.key});

  @override
  State<Lesson11Screen> createState() => _Lesson11ScreenState();
}

class _Lesson11ScreenState extends State<Lesson11Screen> {
  bool _showOverlay = true;

  final Map<String, Map<String, String>> groupedData = {
    "1": {"text": "أَذْ"},
    "2": {"text": "أَظْ"},
    "3": {"text": "أَبْ*"},
    "4": {"text": "أَدْ*"},
    "5": {"text": "أَذْ"},
    "6": {"text": "أَن"},
    "7": {"text": "أَفْ"},
    "8": {"text": "أَضْ"},
    "9": {"text": "أَعْ"},
    "10": {"text": "أَي"},
    "11": {"text": "أَلْ"},
    "12": {"text": "أَهْ"},
    "13": {"text": "أَغْ"},
    "14": {"text": "أَخْ"},
    "15": {"text": "أَخْ"},
    "16": {"text": "أَزْ"},
    "17": {"text": "أَقْ*"},
    "18": {"text": "أَكْ"},
    "19": {"text": "أَخْ"},
    "20": {"text": "أَتْ"},
    "21": {"text": "أَشْ"},
    "22": {"text": "اُسْ"},
    "23": {"text": "أَنْ"},
    "24": {"text": "أَمْ"},
    "25": {"text": "أَثْ"},
    "26": {"text": "أَثْ"},
    "27": {"text": "أَطْ*"},
    "28": {"text": "أَجْ*"},
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sukoon & Qalqalah'), centerTitle: true),
      body: Stack(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
              padding: const EdgeInsets.all(4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    (MediaQuery.of(context).size.width ~/ 400).toInt(),
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1,
              ),
              itemCount: groupedData.entries.length,
              itemBuilder: (context, index) {
                final itemKey = groupedData.keys.elementAt(index);
                final itemValue = groupedData[itemKey]!['text']!;
                return Lesson11Card(itemValue: itemValue, itemKey: itemKey);
              },
            ),
          ),

          // Overlay
          if (_showOverlay)
            Stack(
              children: [
                Center(
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Sukoon (ْ) is a symbol that shows a letter has no vowel (Harakat or Tanween) and should be pronounced with a stop.'
                            '\nIt is joined with the Harakah or Tanween sound of the letter that comes before it.'
                            '\nQalqalah is the echoing or bouncing sound that happens when certain letters have a sukoon (ْ) on them.'
                            '\nThe Qalqalah letters are: ق ط د ج ب .'
                            '\nHere for reference, Qalqalah letters are marked with an (*).',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        _showOverlay = false;
                      });
                    },
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

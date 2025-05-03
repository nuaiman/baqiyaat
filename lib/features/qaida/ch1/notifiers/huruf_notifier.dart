import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/models/harf_model.dart';

class HurufNotifier extends StateNotifier<List<Harf>> {
  HurufNotifier()
    : super([
        Harf(
          id: 1,
          isolated: 'ا',
          start: 'ا أَ',
          mid: 'ا أَ ـا ـأ',
          end: 'ا أَ ـا ـأ',
          arPronunciation: 'أَلِفُ',
          enPronunciation: 'Alif',
          bnPronunciation: 'আলিফ',
          toolTip:
              'It is a long vowel. Start from the empty space of the mouth.',
        ),
        Harf(
          id: 2,
          isolated: 'ب',
          start: 'بـ',
          mid: 'ـبـ',
          end: 'ـب',
          arPronunciation: 'بَاءُ',
          enPronunciation: 'Ba',
          bnPronunciation: 'বা',
          toolTip:
              'It is a consonant. Pronounced from the wet part of both lips.',
        ),
        Harf(
          id: 3,
          isolated: 'ت',
          start: 'تـ',
          mid: 'ـتـ',
          end: 'ـت',
          arPronunciation: 'تَاءُ',
          enPronunciation: 'Ta',
          bnPronunciation: 'তা',
          toolTip:
              'It is a consonant. Pronounced from the tip of the tongue touching the roots of the top two front teeth',
        ),
        Harf(
          id: 4,
          isolated: 'ث',
          start: 'ثـ',
          mid: 'ـثـ',
          end: 'ـث',
          arPronunciation: 'ثَاءُ',
          enPronunciation: 'T-Saa',
          bnPronunciation: 'ছা',
          toolTip:
              'It is a consonant. Pronounced from the tip of the tongue touching the inner edges of the top two front teeth.',
        ),
        Harf(
          id: 5,
          isolated: 'ج',
          start: 'جـ',
          mid: 'ـجـ',
          end: 'ـج',
          arPronunciation: 'جِيمٌ',
          enPronunciation: 'Jeem',
          bnPronunciation: 'জীম',
          toolTip:
              'Pronounced from the middle part of the tongue touching the middle part of the palate.',
        ),
        Harf(
          id: 6,
          isolated: 'ح',
          start: 'حـ',
          mid: 'ـحـ',
          end: 'ـح',
          arPronunciation: 'حَاءُ',
          enPronunciation: 'Ha’',
          bnPronunciation: 'হা’',
          toolTip:
              'Pronounce it with a clear burst of air from the middle part of the throat. It is a heavy, throaty sound.',
        ),
        Harf(
          id: 7,
          isolated: 'خ',
          start: 'خـ',
          mid: 'ـخـ',
          end: 'ـخ',
          arPronunciation: 'خَاءُ',
          enPronunciation: 'Kh-w',
          bnPronunciation: 'খ',
          toolTip:
              'Produced from top part of the throat. It is a heavy sound with outward burst of air.',
        ),
        Harf(
          id: 8,
          isolated: 'د',
          start: 'ـد',
          mid: 'ـد',
          end: 'ـد',
          arPronunciation: 'دَالٌ',
          enPronunciation: 'Dal',
          bnPronunciation: 'দাল',
          toolTip:
              'Pronounced from the tip of the tongue touching the roots of the top two front teeth',
        ),
        Harf(
          id: 9,
          isolated: 'ذ',
          start: 'ـذ',
          mid: 'ـذ',
          end: 'ـذ',
          arPronunciation: 'ذَالٌ',
          enPronunciation: 'Zal',
          bnPronunciation: 'যাল',
          toolTip:
              'Pronounced from the tip of the tongue touching the inner edges of the top two front teeth.',
        ),
        Harf(
          id: 10,
          isolated: 'ر',
          start: 'ـر',
          mid: 'ـر',
          end: 'ـر',
          arPronunciation: 'رَاءُ',
          enPronunciation: 'Rwa',
          bnPronunciation: 'র',
          toolTip:
              'Raa is a light sound. Tap the tip of your tongue against the upper palate, creating a smooth, rolling vibration.',
        ),
        Harf(
          id: 11,
          isolated: 'ز',
          start: 'ـز',
          mid: 'ـز',
          end: 'ـز',
          arPronunciation: 'زَايٌ',
          enPronunciation: 'Za',
          bnPronunciation: 'যা',
          toolTip:
              'Pronounced from the tip of the tongue touching the inner edges of the top two and bottom two front teeth .',
        ),
        Harf(
          id: 12,
          isolated: 'س',
          start: 'سـ',
          mid: 'ـسـ',
          end: 'ـس',
          arPronunciation: 'سِينٌ',
          enPronunciation: 'Seen',
          bnPronunciation: 'সীন',
          toolTip:
              'Pronounced from the tip of the tongue touching the inner edges of the top two and bottom two front teeth .',
        ),
        Harf(
          id: 13,
          isolated: 'ش',
          start: 'شـ',
          mid: 'ـشـ',
          end: 'ـش',
          arPronunciation: 'شِينٌ',
          enPronunciation: 'Sheen',
          bnPronunciation: 'শীন',
          toolTip:
              'Pronounced by raising the tongue slightly toward the hard palate and make a soft "sh" sound.',
        ),
        Harf(
          id: 14,
          isolated: 'ص',
          start: 'صـ',
          mid: 'ـصـ',
          end: 'ـص',
          arPronunciation: 'صَادٌ',
          enPronunciation: 'Sw-ad',
          bnPronunciation: 'ছ-দ',
          toolTip:
              'Pronounce it from the deep part of the palate, creating a heavy “S” sound with a distinct burst of air.',
        ),
        Harf(
          id: 15,
          isolated: 'ض',
          start: 'ضـ',
          mid: 'ـضـ',
          end: 'ـض',
          arPronunciation: 'ضَادٌ',
          enPronunciation: 'Dw-ad',
          bnPronunciation: 'দ্ব-দ',
          toolTip:
              'Pronounce it from the deep part of the palate, creating a heavy “D” sound with a distinct burst of air.',
        ),
        Harf(
          id: 16,
          isolated: 'ط',
          start: 'طـ',
          mid: 'ـطـ',
          end: 'ـط',
          arPronunciation: 'طَاءُ',
          enPronunciation: 'Twa-O',
          bnPronunciation: 'ত্ব‌ও',
          toolTip:
              'Pronounce it from the deep part of the palate, ensuring a deep and prolonged “T” sound with a distinct burst of air.',
        ),
        Harf(
          id: 17,
          isolated: 'ظ',
          start: 'ظـ',
          mid: 'ـظـ',
          end: 'ـظ',
          arPronunciation: 'ظَاءُ',
          enPronunciation: 'Zwa-O',
          bnPronunciation: 'য‌ও',
          toolTip:
              'Pronounce it heavily from the deep part of the palate, ensuring a deep and prolonged “Z” sound.',
        ),
        Harf(
          id: 18,
          isolated: 'ع',
          start: 'عـ',
          mid: 'ـعـ',
          end: 'ـع',
          arPronunciation: 'عَيْنٌ',
          enPronunciation: 'Aa’yn',
          bnPronunciation: 'আ’ইন',
          toolTip:
              'Produce it from the middle part of the throat with a distinct, deep sound, as if slightly choking, and elongate it properly.',
        ),
        Harf(
          id: 19,
          isolated: 'غ',
          start: 'غـ',
          mid: 'ـغـ',
          end: 'ـغ',
          arPronunciation: 'غَيْنٌ',
          enPronunciation: 'Gwa-in',
          bnPronunciation: 'গইন',
          toolTip:
              'Pronounce it from the back of the throat with a distinct guttural sound with a "Gh" accent.',
        ),
        Harf(
          id: 20,
          isolated: 'ف',
          start: 'فـ',
          mid: 'ـفـ',
          end: 'ـف',
          arPronunciation: 'فَاءُ',
          enPronunciation: 'Fa',
          bnPronunciation: 'ফা',
          toolTip:
              'Pronounce it by gently placing the lower lip against the upper front teeth, emitting a soft “F” sound.',
        ),
        Harf(
          id: 21,
          isolated: 'ق',
          start: 'قـ',
          mid: 'ـقـ',
          end: 'ـق',
          arPronunciation: 'قَافٌ',
          enPronunciation: 'Qw-of',
          bnPronunciation: 'ক্ব-ফ',
          toolTip:
              'Pronounce it from the deep part of the palate, ensuring a heavy “K” sound, slightly emphasizing the back of the throat.',
        ),
        Harf(
          id: 22,
          isolated: 'ك',
          start: 'كـ',
          mid: 'ـكـ',
          end: 'ـك',
          arPronunciation: 'كَافٌ',
          enPronunciation: 'Kaaf',
          bnPronunciation: 'কা-ফ',
          toolTip:
              'Pronounce it by gently touching the back of the tongue against the soft palate, emitting a soft “K” sound.',
        ),
        Harf(
          id: 23,
          isolated: 'ل',
          start: 'لـ',
          mid: 'ـلـ',
          end: 'ـل',
          arPronunciation: 'لَامٌ',
          enPronunciation: 'Laam',
          bnPronunciation: 'লাম',
          toolTip:
              'Pronounce it by gently touching the tip of the tongue against the upper palate while emitting a clear and soft “L” sound.',
        ),
        Harf(
          id: 24,
          isolated: 'م',
          start: 'مـ',
          mid: 'ـمـ',
          end: 'ـم',
          arPronunciation: 'مِيمٌ',
          enPronunciation: 'Meem',
          bnPronunciation: 'মীম',
          toolTip:
              'Pronounce it by closing the lips and emitting a soft “M” sound.',
        ),
        Harf(
          id: 25,
          isolated: 'ن',
          start: 'نـ',
          mid: 'ـنـ',
          end: 'ـن',
          arPronunciation: 'نُونٌ',
          enPronunciation: 'Noon',
          bnPronunciation: 'নূন',
          toolTip:
              'Pronounce it by touching the tip of the tongue against the upper front teeth, emitting a soft and clear “N” sound.',
        ),
        Harf(
          id: 26,
          isolated: 'و',
          start: 'ـو',
          mid: 'ـو',
          end: 'ـو',
          arPronunciation: 'وَاوٌ',
          enPronunciation: 'Waw',
          bnPronunciation: 'ওয়াও',
          toolTip:
              'Pronounced by the rounding of both lips starting from empty space of the mouth.',
        ),
        Harf(
          id: 27,
          isolated: 'ه',
          start: 'هـ',
          mid: 'ـهـ',
          end: 'ـه',
          arPronunciation: 'هَاءُ',
          enPronunciation: 'Ha',
          bnPronunciation: 'হা',
          toolTip:
              'Pronounce it by lightly expelling air with a soft exhalation, ensuring a clear and distinct “H” sound.',
        ),
        Harf(
          id: 28,
          isolated: 'ء',
          start: 'ء',
          mid: 'ء',
          end: 'ء',
          arPronunciation: 'هَمْزَةُ',
          enPronunciation: 'Hamza',
          bnPronunciation: 'হামযা',
          toolTip:
              'Pronounce it by lightly expelling air with a soft exhalation, ensuring a clear and distinct “H” sound.',
        ),
        Harf(
          id: 29,
          isolated: 'ي',
          start: 'يـ',
          mid: 'ـيـ',
          end: 'ـي',
          arPronunciation: 'يَاءُ',
          enPronunciation: 'Ya',
          bnPronunciation: 'ইয়া',
          toolTip:
              'Pronounce it by slightly spread your lips and make a soft "Yaa" sound.',
        ),
      ]);
}

// -----------------------------------------------------------------------------
final hurufProvider = StateNotifierProvider<HurufNotifier, List<Harf>>((ref) {
  return HurufNotifier();
});

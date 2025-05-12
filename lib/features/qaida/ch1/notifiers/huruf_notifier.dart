import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/models/harf_model.dart';

class HurufNotifier extends StateNotifier<List<Harf>> {
  HurufNotifier()
    : super([
        Harf(
          id: 1,
          isolated: 'ا',
          start: 'أ',
          mid: 'ـأ',
          end: 'ـأ',
          arPronunciation: 'اَﻟِﻒْ',
          enPronunciation: 'Alif',
          bnPronunciation: 'আলিফ',
          toolTipEn: 'Start from the empty space of the mouth.',
          toolTipBn: 'মুখের ফাঁকা স্থান থেকে শুরু করুন।',
        ),
        Harf(
          id: 2,
          isolated: 'ب',
          start: 'بـ',
          mid: 'ـبـ',
          end: 'ـب',
          arPronunciation: 'ﺑَﺎ',
          enPronunciation: 'Ba',
          bnPronunciation: 'বা',
          toolTipEn: 'Pronounced from the wet part of both lips.',
          toolTipBn: 'উভয় ঠোঁটের ভেজা অংশ থেকে উচ্চারণ করুন।',
        ),
        Harf(
          id: 3,
          isolated: 'ت',
          start: 'تـ',
          mid: 'ـتـ',
          end: 'ـت',
          arPronunciation: 'ﺗَﺎ',
          enPronunciation: 'Ta',
          bnPronunciation: 'তা',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the roots of the top two front teeth',
          toolTipBn:
              'জিবের আগা উপরের দুটি সামনে দাঁতের মূল অংশে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 4,
          isolated: 'ث',
          start: 'ثـ',
          mid: 'ـثـ',
          end: 'ـث',
          arPronunciation: 'ﺛَﺎ',
          enPronunciation: 'T-Saa',
          bnPronunciation: 'ছা',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the inner edges of the top two front teeth.',
          toolTipBn:
              'জিবের আগা উপরের দুটি সামনে দাঁতের ভেতরের প্রান্তে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 5,
          isolated: 'ج',
          start: 'جـ',
          mid: 'ـجـ',
          end: 'ـج',
          arPronunciation: 'ﺟِﻴﻢ',
          enPronunciation: 'Jeem',
          bnPronunciation: 'জীম',
          toolTipEn:
              'Pronounced from the middle part of the tongue touching the middle part of the palate.',
          toolTipBn:
              'জিবের মাঝের অংশটি তালুর মাঝের অংশে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 6,
          isolated: 'ح',
          start: 'حـ',
          mid: 'ـحـ',
          end: 'ـح',
          arPronunciation: 'ﺣَﺎ',
          enPronunciation: 'Ha’',
          bnPronunciation: 'হা’',
          toolTipEn:
              'Pronounce it with a clear burst of air from the middle part of the throat. It is a heavy, throaty sound.',
          toolTipBn:
              'গলার মাঝের অংশ থেকে একটি স্পষ্ট বাতাসের বিস্ফোরণ সহ উচ্চারণ করুন। এটি একটি ভারী, গলা-ভিত্তিক ধ্বনি।',
        ),
        Harf(
          id: 7,
          isolated: 'خ',
          start: 'خـ',
          mid: 'ـخـ',
          end: 'ـخ',
          arPronunciation: 'ﺧَﺎ',
          enPronunciation: 'Kh-w',
          bnPronunciation: 'খ',
          toolTipEn:
              'Produced from top part of the throat. It is a heavy sound with outward burst of air.',
          toolTipBn:
              'গলার উপরের অংশ থেকে উৎপন্ন হয়। এটি একটি ভারী ধ্বনি, সঙ্গে বাইরের দিকে বাতাসের বিস্ফোরণ হয়।',
        ),
        Harf(
          id: 8,
          isolated: 'د',
          start: 'ـد',
          mid: 'ـد',
          end: 'ـد',
          arPronunciation: 'دَالْ',
          enPronunciation: 'Dal',
          bnPronunciation: 'দাল',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the roots of the top two front teeth',
          toolTipBn:
              'জিবের আগা উপরের দুটি সামনে দাঁতের মূল অংশে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 9,
          isolated: 'ذ',
          start: 'ـذ',
          mid: 'ـذ',
          end: 'ـذ',
          arPronunciation: 'ذَالْ',
          enPronunciation: 'Zal',
          bnPronunciation: 'যাল',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the inner edges of the top two front teeth.',
          toolTipBn:
              'জিবের আগা উপরের দুটি সামনে দাঁতের ভেতরের প্রান্তে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 10,
          isolated: 'ر',
          start: 'ـر',
          mid: 'ـر',
          end: 'ـر',
          arPronunciation: 'رَا',
          enPronunciation: 'Rwa',
          bnPronunciation: 'র',
          toolTipEn:
              'Raa is a light sound. Tap the tip of your tongue against the upper palate, creating a smooth, rolling vibration.',
          toolTipBn:
              'রা একটি হালকা ধ্বনি। জিবের আগাটি উপরের তালুর সাথে স্পর্শ করুন, একটি মসৃণ, ঘূর্ণনশীল কম্পন তৈরি করুন।',
        ),
        Harf(
          id: 11,
          isolated: 'ز',
          start: 'ـز',
          mid: 'ـز',
          end: 'ـز',
          arPronunciation: 'زَا',
          enPronunciation: 'Za',
          bnPronunciation: 'যা',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the inner edges of the top two and bottom two front teeth.',
          toolTipBn:
              'জিবের আগা উপরের দুইটি এবং নিচের দুইটি সামনে দাঁতের ভেতরের প্রান্তে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 12,
          isolated: 'س',
          start: 'سـ',
          mid: 'ـسـ',
          end: 'ـس',
          arPronunciation: 'ﺳِﻴْﻦْ',
          enPronunciation: 'Seen',
          bnPronunciation: 'সীন',
          toolTipEn:
              'Pronounced from the tip of the tongue touching the inner edges of the top two and bottom two front teeth.',
          toolTipBn:
              'জিবের আগা উপরের দুইটি এবং নিচের দুইটি সামনে দাঁতের ভেতরের প্রান্তে স্পর্শ করে উচ্চারণ করুন।',
        ),
        Harf(
          id: 13,
          isolated: 'ش',
          start: 'شـ',
          mid: 'ـشـ',
          end: 'ـش',
          arPronunciation: 'ﺷِﻴْﻦْ',
          enPronunciation: 'Sheen',
          bnPronunciation: 'শীন',
          toolTipEn:
              'Pronounced by raising the tongue slightly toward the hard palate and make a soft "sh" sound.',
          toolTipBn:
              'জিবটিকে কিছুটা উপরের তালুর দিকে উঁচু করে একটি নরম "শ" ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 14,
          isolated: 'ص',
          start: 'صـ',
          mid: 'ـصـ',
          end: 'ـص',
          arPronunciation: 'ﺻَﺎدْ',
          enPronunciation: 'Sw-ad',
          bnPronunciation: 'ছ-দ',
          toolTipEn:
              'Pronounce it from the deep part of the palate, creating a heavy “S” sound with a distinct burst of air.',
          toolTipBn:
              'তালুর গভীর অংশ থেকে একটি ভারী “স” ধ্বনি উচ্চারণ করুন, সাথে একটি স্পষ্ট বাতাসের বিস্ফোরণ তৈরি করুন।',
        ),
        Harf(
          id: 15,
          isolated: 'ض',
          start: 'ضـ',
          mid: 'ـضـ',
          end: 'ـض',
          arPronunciation: 'ﺿَﺎد',
          enPronunciation: 'Dw-ad',
          bnPronunciation: 'দ্ব-দ',
          toolTipEn:
              'Pronounce it from the deep part of the palate, creating a heavy “D” sound with a distinct burst of air.',
          toolTipBn:
              'তালুর গভীর অংশ থেকে একটি ভারী “ড” ধ্বনি উচ্চারণ করুন, সাথে একটি স্পষ্ট বাতাসের বিস্ফোরণ তৈরি করুন।',
        ),
        Harf(
          id: 16,
          isolated: 'ط',
          start: 'طـ',
          mid: 'ـطـ',
          end: 'ـط',
          arPronunciation: 'طَا',
          enPronunciation: 'Twa-O',
          bnPronunciation: 'ত্ব‌ও',
          toolTipEn:
              'Pronounce it from the deep part of the palate, ensuring a deep and prolonged “T” sound with a distinct burst of air.',
          toolTipBn:
              'তালুর গভীর অংশ থেকে একটি গভীর ও দীর্ঘস্থায়ী “ট” ধ্বনি উচ্চারণ করুন, সাথে একটি স্পষ্ট বাতাসের বিস্ফোরণ নিশ্চিত করুন।',
        ),
        Harf(
          id: 17,
          isolated: 'ظ',
          start: 'ظـ',
          mid: 'ـظـ',
          end: 'ـظ',
          arPronunciation: 'ﻇَﺎ',
          enPronunciation: 'Zwa-O',
          bnPronunciation: 'য‌ও',
          toolTipEn:
              'Pronounce it heavily from the deep part of the palate, ensuring a deep and prolonged “Z” sound.',
          toolTipBn:
              'তালুর গভীর অংশ থেকে ভারীভাবে উচ্চারণ করুন, যাতে একটি গভীর ও দীর্ঘস্থায়ী “জ” ধ্বনি তৈরি হয়।',
        ),
        Harf(
          id: 18,
          isolated: 'ع',
          start: 'عـ',
          mid: 'ـعـ',
          end: 'ـع',
          arPronunciation: 'ﻋَﻴْﻦْ',
          enPronunciation: 'Aa’yn',
          bnPronunciation: 'আ’ইন',
          toolTipEn:
              'Produce it from the middle part of the throat with a distinct, deep sound, as if slightly choking, and elongate it properly.',
          toolTipBn:
              'গলার মাঝের অংশ থেকে একটি স্পষ্ট, গভীর ধ্বনি উৎপন্ন করুন, যেন কিছুটা দম বন্ধ হয়ে যাচ্ছে, এবং এটি সঠিকভাবে দীর্ঘায়িত করুন।',
        ),
        Harf(
          id: 19,
          isolated: 'غ',
          start: 'غـ',
          mid: 'ـغـ',
          end: 'ـغ',
          arPronunciation: 'ﻏَﻴْﻦْ',
          enPronunciation: 'Gwa-in',
          bnPronunciation: 'গইন',
          toolTipEn:
              'Pronounce it from the back of the throat with a distinct guttural sound with a "Gh" accent.',
          toolTipBn:
              'গলার পেছন থেকে একটি স্পষ্ট গলা-ভিত্তিক ধ্বনি সহ “গ” উচ্চারণ করুন।',
        ),
        Harf(
          id: 20,
          isolated: 'ف',
          start: 'فـ',
          mid: 'ـفـ',
          end: 'ـف',
          arPronunciation: 'ﻓَﺎ',
          enPronunciation: 'Fa',
          bnPronunciation: 'ফা',
          toolTipEn:
              'Pronounce it by gently placing the lower lip against the upper front teeth, emitting a soft “F” sound.',
          toolTipBn:
              'নিচের ঠোঁট উপরের সামনে দাঁতের সাথে মৃদুভাবে স্পর্শ করে একটি নরম “ফ” ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 21,
          isolated: 'ق',
          start: 'قـ',
          mid: 'ـقـ',
          end: 'ـق',
          arPronunciation: 'ﻗَﺎفْ',
          enPronunciation: 'Qw-of',
          bnPronunciation: 'ক্ব-ফ',
          toolTipEn:
              'Pronounce it from the deep part of the palate, ensuring a heavy “K” sound, slightly emphasizing the back of the throat.',
          toolTipBn:
              'তালুর গভীর অংশ থেকে উচ্চারণ করুন, যাতে একটি ভারী “ক” ধ্বনি বের হয়, গলার পেছনের অংশে একটু জোর দিয়ে।',
        ),
        Harf(
          id: 22,
          isolated: 'ك',
          start: 'كـ',
          mid: 'ـكـ',
          end: 'ـك',
          arPronunciation: 'ﻛﺎَفْ',
          enPronunciation: 'Kaaf',
          bnPronunciation: 'কা-ফ',
          toolTipEn:
              'Pronounce it by gently touching the back of the tongue against the soft palate, emitting a soft “K” sound.',
          toolTipBn:
              'জিবের পেছন অংশ নরম তালুর সাথে মৃদুভাবে স্পর্শ করে একটি নরম “ক” ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 23,
          isolated: 'ل',
          start: 'لـ',
          mid: 'ـلـ',
          end: 'ـل',
          arPronunciation: 'ﻻَمْ',
          enPronunciation: 'Laam',
          bnPronunciation: 'লাম',
          toolTipEn:
              'Pronounce it by gently touching the tip of the tongue against the upper palate while emitting a clear and soft “L” sound.',
          toolTipBn:
              'জিবের আগা উপরের তালুর সাথে মৃদুভাবে স্পর্শ করে একটি পরিষ্কার ও নরম “এল” ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 24,
          isolated: 'م',
          start: 'مـ',
          mid: 'ـمـ',
          end: 'ـم',
          arPronunciation: 'ﻣِﻴْﻢْ',
          enPronunciation: 'Meem',
          bnPronunciation: 'মীম',
          toolTipEn:
              'Pronounce it by closing the lips and emitting a soft “M” sound.',
          toolTipBn: 'ঠোঁট বন্ধ করে একটি নরম “এম” ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 25,
          isolated: 'ن',
          start: 'نـ',
          mid: 'ـنـ',
          end: 'ـن',
          arPronunciation: 'ﻧُﻮْنْ',
          enPronunciation: 'Noon',
          bnPronunciation: 'নূন',
          toolTipEn:
              'Pronounce it by touching the tip of the tongue against the upper front teeth, emitting a soft and clear “N” sound.',
          toolTipBn:
              'জিবের আগা উপরের সামনে দাঁতের সাথে স্পর্শ করে একটি নরম ও পরিষ্কার “এন” ধ্বনি উচ্চারণ করুন।',
        ),
        Harf(
          id: 26,
          isolated: 'ه',
          start: 'هـ',
          mid: 'ـهـ',
          end: 'ـه',
          arPronunciation: 'ﻫَا',
          enPronunciation: 'Ha',
          bnPronunciation: 'হা',
          toolTipEn:
              'Pronounce it by lightly expelling air with a soft exhalation, ensuring a clear and distinct “H” sound.',
          toolTipBn:
              'নরমভাবে শ্বাস ছাড়ার মাধ্যমে হালকাভাবে বাতাস বের করে উচ্চারণ করুন, যাতে একটি স্পষ্ট ও পৃথক ‘হ’ ধ্বনি তৈরি হয়।',
        ),
        Harf(
          id: 27,
          isolated: 'و',
          start: 'ـو',
          mid: 'ـو',
          end: 'ـو',
          arPronunciation: 'وَاوْ',
          enPronunciation: 'Waw',
          bnPronunciation: 'ওয়াও',
          toolTipEn:
              'Pronounced by the rounding of both lips starting from empty space of the mouth.',
          toolTipBn:
              'মুখের ফাঁকা স্থান থেকে শুরু করে উভয় ঠোঁট ঘুরিয়ে উচ্চারণ করুন।',
        ),
        Harf(
          id: 28,
          isolated: 'ء',
          start: 'ء',
          mid: 'ء',
          end: 'ء',
          arPronunciation: 'هَمْزَ',
          enPronunciation: 'Hamza',
          bnPronunciation: 'হামযা',
          toolTipEn:
              'Pronounce it by lightly expelling air with a soft exhalation, ensuring a clear and distinct “H” sound.',
          toolTipBn:
              'হালকাভাবে বাতাস নিঃসরণ করে একটি নরম শ্বাসের মাধ্যমে উচ্চারণ করুন, যাতে একটি পরিষ্কার ও স্বতন্ত্র "হ" ধ্বনি বের হয়।',
        ),
        Harf(
          id: 29,
          isolated: 'ي',
          start: 'يـ',
          mid: 'ـيـ',
          end: 'ـي',
          arPronunciation: 'ﻳَﺎ',
          enPronunciation: 'Ya',
          bnPronunciation: 'ইয়া',
          toolTipEn:
              'Pronounce it by slightly spread your lips and make a soft "Yaa" sound.',
          toolTipBn:
              'হালকা করে ঠোঁট ছড়িয়ে একটি নরম "ইয়া" ধ্বনি উচ্চারণ করুন।',
        ),
      ]);
}

// -----------------------------------------------------------------------------
final hurufProvider = StateNotifierProvider<HurufNotifier, List<Harf>>((ref) {
  return HurufNotifier();
});

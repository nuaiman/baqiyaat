import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/models/tanween_model.dart';

class TanweenNotifier extends StateNotifier<List<TanweenModel>> {
  TanweenNotifier()
    : super([
        TanweenModel(
          harfId: 1,
          fathatain: 'اًَ',
          dammatain: 'ٌاٌُ',
          kasratain: 'اٍِ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 2,
          fathatain: 'بً',
          dammatain: 'بٌ',
          kasratain: 'بٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 3,
          fathatain: 'تً',
          dammatain: 'تٌ',
          kasratain: 'تٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 4,
          fathatain: 'ثً',
          dammatain: 'ثٌ',
          kasratain: 'ثٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 5,
          fathatain: 'جً',
          dammatain: 'جٌ',
          kasratain: 'جٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 6,
          fathatain: 'حً',
          dammatain: 'حٌ',
          kasratain: 'حٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 7,
          fathatain: 'خً',
          dammatain: 'خٌ',
          kasratain: 'خٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 8,
          fathatain: 'دً',
          dammatain: 'دٌ',
          kasratain: 'دٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 9,
          fathatain: 'ذً',
          dammatain: 'ذٌ',
          kasratain: 'ذٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 10,
          fathatain: 'رً',
          dammatain: 'رٌ',
          kasratain: 'رٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 11,
          fathatain: 'زً',
          dammatain: 'زٌ',
          kasratain: 'زٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 12,
          fathatain: 'سً',
          dammatain: 'سٌ',
          kasratain: 'سٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 13,
          fathatain: 'شً',
          dammatain: 'شٌ',
          kasratain: 'شٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 14,
          fathatain: 'صً',
          dammatain: 'صٌ',
          kasratain: 'صٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 15,
          fathatain: 'ضً',
          dammatain: 'ضٌ',
          kasratain: 'ضٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 16,
          fathatain: 'طً',
          dammatain: 'طٌ',
          kasratain: 'طٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 17,
          fathatain: 'ظً',
          dammatain: 'ظٌ',
          kasratain: 'ظٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 18,
          fathatain: 'عً',
          dammatain: 'عٌ',
          kasratain: 'عٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 19,
          fathatain: 'غً',
          dammatain: 'غٌ',
          kasratain: 'غٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 20,
          fathatain: 'فً',
          dammatain: 'فٌ',
          kasratain: 'فٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 21,
          fathatain: 'قً',
          dammatain: 'قٌ',
          kasratain: 'قٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 22,
          fathatain: 'كً',
          dammatain: 'كٌ',
          kasratain: 'كٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 23,
          fathatain: 'لً',
          dammatain: 'لٌ',
          kasratain: 'لٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 24,
          fathatain: 'مً',
          dammatain: 'مٌ',
          kasratain: 'مٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 25,
          fathatain: 'نً',
          dammatain: 'نٌ',
          kasratain: 'نٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 26,
          fathatain: 'هً',
          dammatain: 'هٌ',
          kasratain: 'هِ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 27,
          fathatain: 'وً',
          dammatain: 'وٌ',
          kasratain: 'وٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 28,
          fathatain: 'ءً',
          dammatain: 'ءٌ',
          kasratain: 'ءٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
        TanweenModel(
          harfId: 29,
          fathatain: 'يً',
          dammatain: 'يٌ',
          kasratain: 'يٍ',
          fathatainAudioPath: '',
          dammatainAudioPath: '',
          kasratainAudioPath: '',
        ),
      ]);
}

// -----------------------------------------------------------------------------
final tanweensProvider =
    StateNotifierProvider<TanweenNotifier, List<TanweenModel>>((ref) {
      return TanweenNotifier();
    });

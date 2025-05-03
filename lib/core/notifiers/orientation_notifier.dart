import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../enums/layout_orientation_enum.dart';

class OrientationNotifier extends StateNotifier<LayoutOrientationEnum> {
  OrientationNotifier() : super(LayoutOrientationEnum.portrait);

  void updateLayout(double width) {
    if (width > 600) {
      state = LayoutOrientationEnum.landscape;
    } else {
      state = LayoutOrientationEnum.portrait;
    }
  }
}

// -----------------------------------------------------------------------------
final orientationProvider =
    StateNotifierProvider<OrientationNotifier, LayoutOrientationEnum>((ref) {
      return OrientationNotifier();
    });

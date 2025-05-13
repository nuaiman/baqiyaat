import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/notifiers/app_theme_notifier.dart';
import 'core/notifiers/orientation_notifier.dart';
import 'core/theme/app_theme.dart';
import 'features/qaida/ch0_qaida_content/screens/qaida_content_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  final themeNotifier = container.read(appThemeNotifierProvider.notifier);
  await themeNotifier.loadTheme();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   await windowManager.ensureInitialized();
  //   WindowOptions windowOptions = WindowOptions(
  //     size: const Size(350, 600),
  //     minimumSize: const Size(350, 600),
  //     center: true,
  //     backgroundColor: Colors.transparent,
  //     skipTaskbar: false,
  //     titleBarStyle: TitleBarStyle.normal,
  //   );
  //   windowManager.waitUntilReadyToShow(windowOptions, () async {
  //     await windowManager.show();
  //     await windowManager.focus();
  //   });
  // }

  runApp(
    UncontrolledProviderScope(container: container, child: AlBaqiyaatApp()),
  );
}

class AlBaqiyaatApp extends ConsumerWidget {
  const AlBaqiyaatApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeNotifierProvider);
    final width = MediaQuery.of(context).size.width;
    Future.delayed(Duration.zero, () {
      ref.read(orientationProvider.notifier).updateLayout(width);
    });
    return MaterialApp(
      title: 'Al Baqiyaat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      darkTheme: AppTheme.darkThemeMode,
      themeMode: themeMode,
      home: QaidaContentScreen(),
    );
  }
}

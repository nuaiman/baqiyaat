import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/notifiers/app_theme_notifier.dart';
import 'core/notifiers/orientation_notifier.dart';
import 'core/theme/app_theme.dart';
import 'features/dashboard/screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  final themeNotifier = container.read(appThemeNotifierProvider.notifier);
  await themeNotifier.loadTheme();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    UncontrolledProviderScope(container: container, child: AlBaqiyaatApp()),
  );
}

class AlBaqiyaatApp extends ConsumerWidget {
  const AlBaqiyaatApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    Future.delayed(Duration.zero, () {
      ref.read(orientationProvider.notifier).updateLayout(width);
    });
    return MaterialApp(
      title: 'Al Baqiyaat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      darkTheme: AppTheme.darkThemeMode,
      themeMode: ThemeMode.system,
      home: DashboardScreen(),
    );
  }
}

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final layoutOrientation = ref.watch(orientationProvider);

//     return Scaffold(
//       appBar: AppBar(title: Text('Responsive Layout with StateNotifier')),
//       body:
//           layoutOrientation == LayoutOrientation.landscape
//               ? Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Landscape Layout', style: TextStyle(fontSize: 24)),
//                 ],
//               )
//               : Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Portrait Layout', style: TextStyle(fontSize: 24)),
//                 ],
//               ),
//     );
//   }
// }

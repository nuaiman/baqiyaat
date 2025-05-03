import 'package:app/core/utils/navigators.dart';
import 'package:app/features/qaida/ch1/screens/huruf_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          navigateTo(context, HurufScreen());
        },
        child: Text('Qaida'),
      ),
    );
  }
}

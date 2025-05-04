import 'package:app/core/utils/navigators.dart';
import 'package:flutter/material.dart';

import '../../qaida/ch0_contents/screens/qaida_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          navigateTo(context, QaidaScreen());
        },
        child: Text('Qaida'),
      ),
    );
  }
}

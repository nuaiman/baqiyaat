import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget widget) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
}

void navigateToWithAnimation(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween(
          begin: Offset(0, 1),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeIn));
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    ),
    // MaterialPageRoute(
    //   builder: (context) => widget,
    // ),
  );
}

void navigateToAndReplace(BuildContext context, Widget widget) {
  Navigator.of(
    context,
  ).pushReplacement(MaterialPageRoute(builder: (context) => widget));
}

void navigateToAndRemoveUntil(BuildContext context, Widget widget) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => widget),
    (_) => false,
  );
}

// void navigateToAndRemoveUntil(BuildContext context, Route route) {
//   Navigator.of(context).pushAndRemoveUntil(route, (_) => false);
// }

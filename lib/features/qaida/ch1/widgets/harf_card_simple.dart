// import 'package:app/core/theme/app_palette.dart';
// import 'package:flutter/material.dart';
// import '../../../../core/models/harf_model.dart';

// class HarfCardSimple extends StatelessWidget {
//   const HarfCardSimple({super.key, required this.harf});

//   final Harf harf;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final width = constraints.maxWidth;
//         final scale = width / 300;

//         return Directionality(
//           textDirection: TextDirection.ltr,
//           child: Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20 * scale),
//             ),
//             elevation: 0,
//             margin: EdgeInsets.all(10 * scale),
//             child: Padding(
//               padding: EdgeInsets.all(15 * scale),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // -----------------------------------------------------------
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buildText(harf.id.toString(), fontSize: 24 * scale),
//                       _buildText(harf.arPronunciation, fontSize: 32 * scale),
//                       _buildText(harf.enPronunciation, fontSize: 32 * scale),
//                     ],
//                   ),
//                   SizedBox(height: 30 * scale),
//                   // ---------------------------------------------------------
//                   Column(
//                     children: [
//                       Card.outlined(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15 * scale),
//                           side: BorderSide(color: AppPalette.grey),
//                         ),
//                         child: Center(
//                           child: Padding(
//                             padding: EdgeInsets.all(12 * scale),
//                             child: Text(
//                               harf.isolated,
//                               style: Theme.of(
//                                 context,
//                               ).textTheme.bodyLarge?.copyWith(
//                                 fontSize: 85 * scale,
//                                 color: AppPalette.active,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildText(String text, {required double fontSize}) {
//     return Text(
//       text,
//       style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
//     );
//   }
// }

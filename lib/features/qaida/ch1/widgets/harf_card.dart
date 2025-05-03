import 'package:app/core/theme/app_palette.dart';
import 'package:app/core/utils/snackbar.dart';
import 'package:flutter/material.dart';
import '../../../../core/models/harf_model.dart';

class HarfCard extends StatelessWidget {
  const HarfCard({super.key, required this.harf});

  final Harf harf;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final scale = width / 400;

        return Directionality(
          textDirection: TextDirection.ltr,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20 * scale),
            ),
            elevation: 0,
            margin: EdgeInsets.all(10 * scale),
            child: Padding(
              padding: EdgeInsets.all(15 * scale),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildText(harf.id.toString(), fontSize: 20 * scale),
                      GestureDetector(
                        onTap: () {
                          showSnackbar(context, harf.toolTipEn);
                        },
                        child: Icon(Icons.info_outline, color: AppPalette.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 20 * scale),

                  // Letter Layout Row
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left column (start, middle, end)
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildListItem('Beginning', harf.start, scale),
                              _buildListItem('Middle', harf.mid, scale),
                              _buildListItem('Ending', harf.end, scale),
                            ],
                          ),
                        ),
                        SizedBox(width: 10 * scale),

                        // Right column (Isolated + Card)
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildIsolatedInfo(
                                'Isolated',
                                harf.arPronunciation,
                                harf.enPronunciation,
                                scale,
                              ),
                              SizedBox(height: 10 * scale),
                              Card.outlined(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    15 * scale,
                                  ),
                                  side: BorderSide(color: AppPalette.grey),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(12 * scale),
                                    child: Text(
                                      harf.isolated,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.copyWith(
                                        fontSize: 90 * scale,
                                        color: AppPalette.active,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildText(String text, {required double fontSize}) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildListItem(String title, String value, double scale) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12 * scale,
              color: AppPalette.active,
            ),
          ),
          // SizedBox(height: 4 * scale),
          Text(
            value,
            style: TextStyle(fontSize: 42 * scale, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildIsolatedInfo(String title, String ar, String en, double scale) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12 * scale,
              color: AppPalette.active,
            ),
          ),
          SizedBox(height: 4 * scale),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ar,
                style: TextStyle(
                  fontSize: 32 * scale,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 24 * scale),
              Text(
                en,
                style: TextStyle(
                  fontSize: 24 * scale,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

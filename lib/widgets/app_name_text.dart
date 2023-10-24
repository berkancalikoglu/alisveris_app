import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:alisveris_app/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Colors.blue,
      highlightColor: Colors.green,
      child: TitlesTextWidget(
        label: "Alışveriş App",
        fontSize: fontSize,
      ),
    );
  }
}

import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:faramove_test/presentation/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/palette.dart';


class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.subtitleColor,
    required this.asset,
    this.onTap
  });

  final Color? color;
  final String? title;
  final String? subtitle;
  final Color? subtitleColor;
  final String? asset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    
    return InkWell(
      onTap: onTap,
      child: Container(
        height: config.sh(104),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5)
        ),
        padding: EdgeInsets.symmetric(horizontal: config.sw(20)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$title",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: config.sp(15),
                      color: Palette.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const YMargin(6),
                  Text(
                    "$subtitle",
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: config.sp(12),
                      fontWeight: FontWeight.w500,
                      color: subtitleColor
                    ),
                  )
                ],
              ),
            ),
            const XMargin(10),
            SvgPicture.asset(
              "$asset".svg,
              height: config.sh(80),
              width: config.sw(80),
            )
          ],
        ),
      ),
    );
  }
}
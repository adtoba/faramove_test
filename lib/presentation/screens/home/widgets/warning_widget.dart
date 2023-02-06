import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:faramove_test/presentation/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/palette.dart';


class WarningWidget extends StatelessWidget {
  const WarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    
    return Container(
      height: config.sh(57),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Palette.lightBlue,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: config.sw(20)),
        child: Row(
          children: [
            Container(
              height: config.sh(50),
              width: config.sw(50),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffDEEAFD)
              ),
              padding: EdgeInsets.symmetric(horizontal: config.sw(10), vertical: config.sh(10)),
              child: SvgPicture.asset("exclamation".svg),
            ),
            const XMargin(12),
            Expanded(
              child: Text(
                "Go to your profile to complete\nregistration",
                style: TextStyle(
                  fontSize: config.sp(13),
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SvgPicture.asset(
              "arrow_forward".svg,
              height: config.sh(16),
              width: config.sw(26.43),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:flutter/material.dart';


class TipsWidget extends StatelessWidget {
  const TipsWidget({super.key, this.color, this.title, this.image});

  final Color? color;
  final String? title;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();

    return Container(
      height: config.sh(200),
      width: config.sw(150),
      padding: EdgeInsets.symmetric(horizontal: config.sw(10), vertical: config.sh(10)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: TextStyle(
              fontSize: config.sp(12)
            ),
          ),
          Expanded(
            child: image!
          )
        ],
      ),
    );
  }
}
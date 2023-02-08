import 'package:faramove_test/presentation/theme/palette.dart';
import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:faramove_test/presentation/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CommunityWidget extends StatelessWidget {
  const CommunityWidget({
    super.key,
    this.imageBackgroundColor,
    this.imageText,
    this.title,
    this.onJoinTapped
  });

  final Color? imageBackgroundColor;
  final String? imageText;
  final String? title;
  final VoidCallback? onJoinTapped;


  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();

    return Row(
      children: [
        Image.asset(
          "$imageText".png,
          height: config.sh(92),
          width: config.sw(100),
        ),
        const XMargin(14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  fontSize: config.sp(14),
                  fontWeight: FontWeight.w600,
                  color: Palette.black
                ),
              ),
              const YMargin(7),
              Row(
                children: [
                  SvgPicture.asset(
                    "community_user".svg
                  ),
                  const XMargin(5),
                  Text(
                    "200+",
                    style: TextStyle(
                      fontSize: config.sp(14),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const XMargin(15),
                  SvgPicture.asset(
                    "letterbox".svg
                  ),
                  const XMargin(5),
                  Text(
                    "50",
                    style: TextStyle(
                      fontSize: config.sp(14),
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  _buildImageWidget(),
                  const Spacer(),
                  SizedBox(
                    width: config.sw(78),
                    height: config.sh(40),
                    child: TextButton(
                      onPressed: onJoinTapped,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Palette.blue)
                      ),
                      child: Text(
                        "Join",
                        style: TextStyle(
                          fontSize: config.sp(12),
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildImageWidget() {
    final config = SizeConfig();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        _imageContainer("image1"),
        Positioned(
          right: config.sw(-25),
          child: _imageContainer("image2")
        ),
        Positioned(
          right: config.sw(-50),
          child: _imageContainer("image3")
        ),
        Positioned(
          right: config.sw(-75),
          child: _imageContainer("image4")
        ),
      ],
    );
  }

  Widget _imageContainer(String? imageAsset) {
    final config = SizeConfig();

    return Container(
      width: config.sw(30),
      height: config.sh(50),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("$imageAsset".png),
          fit: BoxFit.contain
        )
      ),
    );
  }
}
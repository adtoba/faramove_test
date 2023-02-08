import 'package:faramove_test/data/dummyData.dart';
import 'package:faramove_test/presentation/screens/community/widgets/community_widget.dart';
import 'package:faramove_test/presentation/screens/podcast/play_podcast_page.dart';
import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/palette.dart';


class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  
  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .5,
        centerTitle: false,
        title: Text(
          "Community",
          style: TextStyle(
            fontSize: config.sp(20),
            color: Palette.black,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("search".svg),
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (c, i) {
          return const Divider(
            height: 40,
          );
        },
        padding: EdgeInsets.symmetric(horizontal: config.sw(20), vertical: config.sh(30)),
        itemCount: dummyData.length,
        shrinkWrap: true,
        itemBuilder: (c, i) {
          return CommunityWidget(
            imageBackgroundColor: const Color(0xffEC6632),
            imageText: dummyData[i].assetImage,
            title: dummyData[i].title,
            onJoinTapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PlayPodcastPage();
              }));
            },
          );
        },
      ),
    );
  }
}
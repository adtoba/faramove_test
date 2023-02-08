import 'package:faramove_test/presentation/screens/home/widgets/quick_action_widget.dart';
import 'package:faramove_test/presentation/screens/home/widgets/tips_widget.dart';
import 'package:faramove_test/presentation/screens/home/widgets/warning_widget.dart';
import 'package:faramove_test/presentation/theme/palette.dart';
import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:faramove_test/presentation/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();

    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset("user".svg),
        ),
        centerTitle: false,
        title: Text(
          "Hi, Sarah",
          style: TextStyle(
            fontSize: config.sp(20),
            color: Palette.black,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "message_indicator".svg,
              height: config.sh(32),
              width: config.sw(32),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "notification_indicator".svg,
              height: config.sh(32),
              width: config.sw(32),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WarningWidget(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: config.sw(20)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const YMargin(20),
                    Text(
                      "Quick Actions",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: config.sp(16),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const YMargin(16),
                    const QuickActionWidget(
                      color: Palette.orange,
                      subtitleColor: Color(0xffFCF3E3),
                      title: "Book a session", 
                      subtitle: "Get prompt assistance from medical professionals", 
                      asset: "book_session"
                    ),
                    const YMargin(16),
                    const QuickActionWidget(
                      color: Palette.brown, 
                      title: "Diary", 
                      subtitleColor: Color(0xffFBDCD0),
                      subtitle: "Listen to the highlight from your previous session", 
                      asset: "diary"
                    ),
                    const YMargin(16),
                    const QuickActionWidget(
                      color: Palette.purple, 
                      subtitleColor: Color(0xffCEBDF9),
                      title: "Virtual assistant", 
                      subtitle: "Get easy access to converse with the assistant on how you feel", 
                      asset: "virtual_assistant"
                    ),
                    Container(
                      height: 4,
                      color: const Color(0xffF8F9FB),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Text(
                        "Upcoming Session (0)",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Palette.black,
                          fontSize: config.sp(16)
                        ),
                      ),
                      trailing: SvgPicture.asset(
                        "arrow_forward".svg,
                        height: config.sh(16),
                        width: config.sw(26.43),
                      )
                    ),
                    Container(
                      height: 4,
                      color: const Color(0xffF8F9FB),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Tips to stay healthy",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Palette.black,
                          fontSize: config.sp(16)
                        ),
                      ),
                      subtitle: Text(
                        "Get simple health tips.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Palette.lightGrey,
                          fontSize: config.sp(13)
                        ),
                      ),
                      trailing: SvgPicture.asset(
                        "arrow_forward".svg,
                        height: config.sh(16),
                        width: config.sw(26.43),
                      )
                    ),
                    SizedBox(
                      height: config.sh(150),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: config.sh(10)),
                        children:[
                          TipsWidget(
                            title: "Some of the basic things to avoid",
                            color: const Color(0xffFEF8F6),
                            image: SvgPicture.asset(
                              "tips_asset1".svg
                            ),
                          ),
                          const XMargin(20),
                          TipsWidget(
                            title: "Common\nsymptoms",
                            color: const Color(0xffF8F6FE),
                            image: SvgPicture.asset(
                              "tips_asset2".svg
                            ),
                          ),
                          const XMargin(20),
                          TipsWidget(
                            title: "Fruits you can take in the morning",
                            color: const Color(0xffF8F9FB),
                            image: Image.asset(
                              "fruits".png
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
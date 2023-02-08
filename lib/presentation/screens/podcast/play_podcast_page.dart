import 'package:faramove_test/presentation/theme/palette.dart';
import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:faramove_test/presentation/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PlayPodcastPage extends StatefulWidget {
  const PlayPodcastPage({super.key});

  @override
  State<PlayPodcastPage> createState() => _PlayPodcastPageState();
}

class _PlayPodcastPageState extends State<PlayPodcastPage> {

  double seekerValue = 30;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: SvgPicture.asset("dropdown".svg)
        ),
        title: Text(
          "Stay Motivated Ep. 1",
          style: TextStyle(
            fontSize: config.sp(20),
            color: Palette.black,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("bookmark".svg)
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("share".svg)
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: [
            const YMargin(30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: config.sw(10)),
              child: SizedBox(
                height: config.sh(300),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("stay_inspired".png, fit: BoxFit.cover)
                ),
              ),
            ),
            const Spacer(),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: Text(
                "10 reasons",
                style: TextStyle(
                  fontSize: config.sp(17),
                  fontWeight: FontWeight.w700
                ),
              ),
              subtitle: Text(
                "Stay Inspired- Episode 1 ",
                style: TextStyle(
                  fontSize: config.sp(15),
                  fontWeight: FontWeight.w400,
                  color: Palette.lightGrey
                ),
              ),
              trailing: IconButton(
                onPressed: () {}, 
                icon: SvgPicture.asset("speaker".svg)
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: config.sw(5)),
              child: Slider(
                value: seekerValue,
                min: 0.0,
                max: 100,
                activeColor: Palette.blue,
                inactiveColor: const Color(0xffE3EDFC),
                onChanged: (val) {
                  setState(() {
                    seekerValue = val;
                  });
                }
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: config.sw(20)),
              child: Row(
                children: [
                  Text(
                    "1:53",
                    style: TextStyle(
                      fontSize: config.sp(12),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "-1:53",
                    style: TextStyle(
                      fontSize: config.sp(12),
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: config.sw(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "1x",
                    style: TextStyle(
                      fontSize: config.sp(16),
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset("previous".svg)),
                  IconButton(
                    onPressed: () {}, 
                    icon: SvgPicture.asset("pause".svg),
                    iconSize: 100,
                  ),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset("next".svg)),
                  const Spacer()
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: config.sw(20)),
              padding: EdgeInsets.symmetric(horizontal: config.sw(12), vertical: config.sh(14)),
              decoration: const BoxDecoration(
                color: Palette.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                )
              ),
              child: Row(
                children: [
                  Text(
                    "Transcript",
                    style: TextStyle(
                      fontSize: config.sp(16),
                      color: Palette.white,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: config.sw(96),
                    height: config.sh(40),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 255, 255, 0.2)
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        )
                      ), 
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "EXPAND",
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: config.sp(12)
                            ),
                          ),
                          const XMargin(2),
                          SvgPicture.asset("external_link".svg)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
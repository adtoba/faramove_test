import 'package:faramove_test/presentation/screens/community/community_page.dart';
import 'package:faramove_test/presentation/screens/home/home_page.dart';
import 'package:faramove_test/presentation/theme/palette.dart';
import 'package:faramove_test/presentation/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  
  late PageController _pageController;
  int index = 0;

  @override
  void initState() {
    _pageController = PageController(
      keepPage: true,
      initialPage: 0
    );
    super.initState();
  }

  void _onPageChanged(int idx) {
    setState(() {
      index = idx;
    });
    _pageController.jumpToPage(idx);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  
  final List<Widget> _pages = [
    const HomePage(),
    Container(),
    Container(),
    const CommunityPage(),
    Container()
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Palette.blue,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(250, 252, 255, 0.8),
        currentIndex: index,
        onTap: _onPageChanged,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(
          color: Palette.blue
        ),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: index == 0 
              ? SvgPicture.asset("home_selected".svg)
              : SvgPicture.asset("home".svg),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("resources".svg),
            label: "Resources"
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("session".svg),
            label: "Session"
          ),
          BottomNavigationBarItem(
            icon: index == 3 
              ? SvgPicture.asset("community_selected".svg)
              : SvgPicture.asset("community".svg),
            label: "Community"
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("account".svg),
            label: "Account"
          )
        ],
      ),
    );
  }
}
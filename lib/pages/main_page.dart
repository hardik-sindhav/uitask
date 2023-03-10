import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/pages/discover_page.dart';
import 'package:uitask/pages/home_page.dart';
import 'package:uitask/pages/portfolio_page.dart';
import 'package:uitask/pages/profile_page.dart';
import 'package:uitask/utils/colors_utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  List<Widget> pages = [
    const HomePage(),
    const DiscoverPage(),
    const PortfolioPage(),
    const ProfilePage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            itemsView(
              itemColor: index == 0 ? blackColor : grayColor,
              voidCallback: () {
                setState(() {
                  index = 0;
                  pageController.jumpToPage(index);
                });
              },
            ),
            itemsView(
              text: 'Discover',
              icon: "assets/images/search.svg",
              itemColor: index == 1 ? blackColor : grayColor,
              voidCallback: () {
                setState(() {
                  index = 1;
                  pageController.jumpToPage(index);
                });
              },
            ),
            itemsView(
                text: 'Portfolio',
                icon: "assets/images/portfolio.svg",
                voidCallback: () {
                  setState(() {
                    index = 2;
                    pageController.jumpToPage(index);
                  });
                },
                itemColor: index == 2 ? blackColor : grayColor),
            itemsView(
                text: 'Profile',
                icon: "assets/images/profile.svg",
                voidCallback: () {
                  setState(() {
                    index = 3;
                    pageController.jumpToPage(index);
                  });
                },
                itemColor: index == 3 ? blackColor : grayColor),
          ],
        ),
      ),
    );
  }

  Widget itemsView({text, Color? itemColor, icon, VoidCallback? voidCallback}) {
    return GestureDetector(
      onTap: voidCallback,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon ?? "assets/images/home.svg",
            height: 3.h,
            color: itemColor,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            text ?? "Home",
            style: TextStyle(color: itemColor, fontSize: 10.sp),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:caiman_golf/ui/screens/tabs/events_tab.dart';
import 'package:caiman_golf/ui/screens/tabs/home_event.dart';
import 'package:caiman_golf/ui/screens/tabs/invite_tab.dart';
import 'package:caiman_golf/ui/screens/tabs/play_tab.dart';
import 'package:caiman_golf/ui/screens/tabs/setting_tab.dart';
import 'package:caiman_golf/ui/screens/tabs/stats_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/providers/menu_provider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final autoSizeGroup = AutoSizeGroup();
  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.calendar_month,
    Icons.graphic_eq_outlined,
    Icons.person_add_alt,
    Icons.settings,
  ];

  @override
  void initState() {
    super.initState();

    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
      borderRadiusCurve,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      const Duration(seconds: 1),
          () => _fabAnimationController.forward(),
    );
    Future.delayed(
      const Duration(seconds: 1),
          () => _borderRadiusAnimationController.forward(),
    );
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      switch (notification.direction) {
        case ScrollDirection.forward:
          _hideBottomBarAnimationController.reverse();
          _fabAnimationController.forward(from: 0);
          break;
        case ScrollDirection.reverse:
          _hideBottomBarAnimationController.forward();
          _fabAnimationController.reverse(from: 1);
          break;
        case ScrollDirection.idle:
          break;
      }
    }
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (BuildContext context, menuProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: ConstColors.homeBackgroundMenu,
            onPressed: () {
             Provider.of<MenuProvider>(context,listen: false).setIndexTab(04);
            },
            //params
            child:   Icon(Icons.sports_golf_rounded ,color: ConstColors.whiteColor,),
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            // height: 6.h,
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? ConstColors.whiteColor : Colors.grey;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 7.w,
                    color: color,
                  ),
                  SizedBox(height: .3.h),
                  AutoSizeText(
                    index==0?'Events':
                    index==1?'Stats':
                    index==2?'invite':
                    'Setting',
                    maxLines: 1,
                    style: TextStyle(color: color),
                    group: autoSizeGroup,
                  )
                ],
              );
            },
            backgroundColor: ConstColors.homeBackgroundMenu,
            activeIndex: menuProvider.indexTab,
            splashColor: ConstColors.activeNavigationBarColor,
            notchAndCornersAnimation: borderRadiusAnimation,
            splashSpeedInMilliseconds: 300,
            notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            // leftCornerRadius: 32,
            // rightCornerRadius: 32,
            onTap: (index) => menuProvider.setIndexTab(index),
            hideAnimationController: _hideBottomBarAnimationController,
            shadow: BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 12,
              spreadRadius: 0.5,
              color: ConstColors.activeNavigationBarColor,
            ),
          ),
          body: SizedBox(
              width: 100.h,
              height: 100.h,
              child: menuProvider.indexTab == 0
                  ?   HomeEvent()
                  : menuProvider.indexTab == 1
                  ? const StatsTab()
                  : menuProvider.indexTab == 2
                  ?  const InviteTab()
                  :  menuProvider.indexTab == 3
              ? const SettingTab()
                  : const PlayTab()
          ),
        );
      },
    );
  }
}



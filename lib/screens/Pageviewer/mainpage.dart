import 'package:flutter/material.dart';
import 'package:minecloud_tal/Responsive/responsive.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/Dashboard/mobile_dasboard.dart';
import 'package:minecloud_tal/screens/Dashboard/web_dashboard.dart';
import 'package:minecloud_tal/screens/Pageviewer/web_main.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/login/web_login.dart';

import '../../common/theme/colors.dart';
import '../../widgets/simpleWs.dart';
import 'mobile_mai.dart';

class MainPage extends StatelessWidget {
  final bool isLocalPage;
  final bool isPackView;

  MainPage({required this.isLocalPage, required this.isPackView, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = maxHeight(context) / 100;
    return Container(
      decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
        backgroundColor: kEmptyColor,
        body: ResponsiveLayout(
          mobileLayout: MobileMainPage(isLocalPage: isLocalPage,isPackView: isPackView,),
          webLayout: WebMainPage(isLocalPage: isLocalPage,isPackView: isPackView,),
        ),
      ),
    );
  }
}

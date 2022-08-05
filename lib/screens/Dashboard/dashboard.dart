import 'package:flutter/material.dart';
import 'package:minecloud_tal/Responsive/responsive.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/Dashboard/mobile_dasboard.dart';
import 'package:minecloud_tal/screens/Dashboard/web_dashboard.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/login/web_login.dart';

import '../../common/theme/colors.dart';
import '../../widgets/simpleWs.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = maxHeight(context) / 100;
    return Container(
      decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
        backgroundColor: kEmptyColor,
        body: ResponsiveLayout(
          mobileLayout: MobileDashboard(),
          webLayout: WebDashBoard(),
        ),
      ),
    );
  }
}

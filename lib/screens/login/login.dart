import 'package:flutter/material.dart';
import 'package:minecloud_tal/Responsive/responsive.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/login/web_login.dart';

import '../../common/theme/colors.dart';
import '../../widgets/simpleWs.dart';
import '../Dashboard/dashboard.dart';
import '../plans/mobile_plans.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MyResponsiveScreen(
        mobileScreen: const MobilePlans(),
        webScreen: WebLogin(),
      );
  }
}

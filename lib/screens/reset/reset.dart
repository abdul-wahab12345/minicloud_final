import 'package:flutter/material.dart';
import 'package:minecloud_tal/screens/reset/mobile_reset.dart';
import 'package:minecloud_tal/screens/reset/web_reset.dart';

import '../../common/theme/constants.dart';
import '../Dashboard/dashboard.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyResponsiveScreen(
      mobileScreen: MobileResetPass(
        height: kMediaQuerySize(context).height * 0.5,
        width: kMediaQuerySize(context).width,
      ),
      webScreen: WebResetPass(
        width: 400,
        height: 400,
      ),
    );
  }
}

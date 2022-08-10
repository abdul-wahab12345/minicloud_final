import 'package:flutter/material.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/signup/mobile_signup.dart';
import 'package:minecloud_tal/screens/signup/web_signup.dart';

import '../Dashboard/dashboard.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyResponsiveScreen(
      mobileScreen: MobileSignup(
        width: kMediaQuerySize(context).width,
      ),
      webScreen: WebSignup(
        width: 400,
      ),
    );
  }
}

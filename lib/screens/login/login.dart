import 'package:flutter/material.dart';
import '../../common/theme/constants.dart';
import '/screens/login/mobile_login.dart';
import '/screens/login/web_login.dart';

import '../Dashboard/dashboard.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyResponsiveScreen(
      mobileScreen: MobileLoginPage(
        width: kMediaQuerySize(context).width,
        isWeb: false,
      ),
      webScreen: WebLogin(),
    );
  }
}

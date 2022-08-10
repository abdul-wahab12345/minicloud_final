import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minecloud_tal/functions/webpopups/buildIcons.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/reset/reset.dart';
import 'package:minecloud_tal/screens/signup/signup.dart';

import '../../common/theme/colors.dart';
import '../../common/theme/constants.dart';
import '../../common/theme/text.dart';
import '../Dashboard/dashboard.dart';
import '../Dashboard/mobile_dasboard.dart';
import '../../functions/loadingDialogW.dart';
import '../../widgets/buttonsWs.dart';
import '../../widgets/components/login_bottomSignUp.dart';
import '../../widgets/components/mainBoardingSlider.dart';
import '../../widgets/simpleWs.dart';
import '../../widgets/textFieldW.dart';
import '../reset/mobile_reset.dart';
import '../signup/mobile_signup.dart';
import 'package:minecloud_tal/functions/svgIconWidget.dart';

class WebLogin extends StatefulWidget {
  WebLogin({Key? key}) : super(key: key);

  @override
  State<WebLogin> createState() => _WebLoginState();
}

class _WebLoginState extends State<WebLogin> {
  bool isPassHidden = true;

  Widget containerDivider() => Expanded(child: lightDivider());

  @override
  Widget build(BuildContext context) {
    var height = maxHeight(context) / 100;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainBoardingSlider(),
                SizedBox(
                  height: height * 2,
                ),
                buildIconRow(context),
              ],
            ),
          ),
          if (maxHeight(context) > 1300)
            Expanded(
              flex: 2,
              child: Container(),
            ),
          Expanded(
            flex: 3,
            child: Container(
              // margin: EdgeInsets.only(bottom: 100),
              child: LoginFeildContainer(
                width: 400,
                isWeb: true,
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

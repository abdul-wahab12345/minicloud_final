import 'package:flutter/material.dart';
import 'package:minecloud_tal/Responsive/responsive.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/login/web_login.dart';
import 'package:minecloud_tal/screens/reset/mobile_reset.dart';
import 'package:minecloud_tal/screens/reset/web_reset.dart';

import '../../common/theme/colors.dart';
import '../../widgets/simpleWs.dart';

class ResetPage extends StatelessWidget {
  ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height =  maxHeight(context) / 100;
    return Container(
      decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
        backgroundColor: kEmptyColor,
        body: ResponsiveLayout(
          mobileLayout: MobileResetPass(),
          webLayout: Stack(children: [
            Container(
              decoration: const BoxDecoration(gradient: darkBackgroundGradient),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(top:height * 5),
                      child: Image.asset(
                        'assets/images/bgoverlay1.png',
                        fit: BoxFit.fill,
                        width: height * 100,
                        height: height * 100,
                      ),
                    ),
                  ),
                  Expanded(flex: 3, child: Container()),
                  Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/overlay2.png',
                      
                        )),
                  ),
                ],
              ),
            ),
          WebResetPass()
          ]),
        ),
      ),
    );
  }
}

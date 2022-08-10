import 'package:flutter/material.dart';
import 'package:minecloud_tal/functions/webpopups/buildIcons.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import '../../common/theme/constants.dart';
import '../../widgets/components/mainBoardingSlider.dart';
import '../../widgets/simpleWs.dart';

class WebLogin extends StatefulWidget {
  const WebLogin({Key? key}) : super(key: key);

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
            child: LoginFeildContainer(
              width: 400,
              isWeb: true,
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

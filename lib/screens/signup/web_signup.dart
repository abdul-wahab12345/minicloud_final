import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minecloud_tal/common/theme/text.dart';
import 'package:minecloud_tal/screens/login/login.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/reset/mobile_reset.dart';
import 'package:minecloud_tal/screens/signup/mobile_signup.dart';
import 'package:minecloud_tal/widgets/textFieldW.dart';

import '../../common/theme/colors.dart';
import '../../common/theme/constants.dart';
import '../../functions/webpopups/buildIcons.dart';
import '../Dashboard/dashboard.dart';
import '../../functions/cleanDialogW.dart';
import '../../functions/loadingDialogW.dart';
import '../../widgets/components/login_bottomSignUp.dart';
import '../../widgets/buttonsWs.dart';
import '../../widgets/components/mainBoardingSlider.dart';
import '../../widgets/simpleWs.dart';
import 'package:minecloud_tal/functions/svgIconWidget.dart';

class WebSignup extends StatefulWidget {
  WebSignup({Key? key, required this.width}) : super(key: key);
  double width;
  @override
  State<WebSignup> createState() => _WebSignupPageState();
}

class _WebSignupPageState extends State<WebSignup> {
  bool isPassHidden = true;
  bool isAgreeChecked = false;
  int _selectedIndex = 0;
  final PageController _pageController1 = PageController(initialPage: 0);

  Timer? timer1;
  @override
  void initState() {
    super.initState();
    timer1 = Timer.periodic(const Duration(milliseconds: 2500), (Timer t) {
      // _pageController.nextPage(
      //     curve: Curves.easeInOut,
      //     duration: const Duration(milliseconds: 150));

      if (mounted) {
        setState(() {
          _selectedIndex = _selectedIndex + 1;
          if (_selectedIndex == 3) _selectedIndex = 0;
        });
        print('_selectedIndex $_selectedIndex');
        _pageController1.animateToPage(_selectedIndex,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 250));
      } else {
        timer1!.cancel();
        _pageController1.dispose();
      }
    });
  }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   timer1!.cancel();
  //   _pageController1.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Widget containerDivider() => Expanded(child: lightDivider());
    var height = maxHeight(context) / 100;
    return Scaffold(
      backgroundColor: kEmptyColor,
      body: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainBoardingSlider(_selectedIndex, _pageController1),
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
            child: SignUpFeilds(width: widget.width),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

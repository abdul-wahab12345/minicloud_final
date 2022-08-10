import 'package:flutter/material.dart';
import '../../common/theme/colors.dart';
import '../../common/theme/constants.dart';
import '../../functions/webpopups/buildIcons.dart';
import '../../widgets/components/mainBoardingSlider.dart';
import 'mobile_signup.dart';

// ignore: must_be_immutable
class WebSignup extends StatefulWidget {
  WebSignup({Key? key, required this.width}) : super(key: key);
  double width;
  @override
  State<WebSignup> createState() => _WebSignupPageState();
}

class _WebSignupPageState extends State<WebSignup> {
  bool isPassHidden = true;
  bool isAgreeChecked = false;

  @override
  Widget build(BuildContext context) {
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
            child: SignUpFeilds(width: widget.width),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

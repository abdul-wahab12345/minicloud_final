import 'package:flutter/material.dart';
import 'package:minecloud_tal/screens/reset/mobile_reset.dart';

import '../../common/theme/colors.dart';
import '../../common/theme/constants.dart';
import '../../functions/webpopups/buildIcons.dart';
import '../../widgets/components/mainBoardingSlider.dart';

// ignore: must_be_immutable
class WebResetPass extends StatefulWidget {
  WebResetPass({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  double width;
  double height;

  @override
  State<WebResetPass> createState() => _WebResetPassState();
}

class _WebResetPassState extends State<WebResetPass> {
  @override
  Widget build(BuildContext context) {
    var height = maxHeight(context) / 100;

    return Scaffold(
      backgroundColor: kEmptyColor,
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
            child: RestFeilds(
              width: widget.width,
              height: widget.height,
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

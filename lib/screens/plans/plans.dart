import 'package:flutter/material.dart';
import 'package:minecloud_tal/Responsive/responsive.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/screens/plans/mobile_plans.dart';
import 'package:minecloud_tal/screens/plans/web_plans.dart';

import '../../common/theme/colors.dart';

class PlansPage extends StatelessWidget {
  PlansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height =  maxHeight(context) / 100;
    return Container(
      decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
        backgroundColor: kEmptyColor,
        body: ResponsiveLayout(
          mobileLayout:MobilePlans(),
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
         WebPlans()
          ]),
        ),
      ),
    );
  }
}

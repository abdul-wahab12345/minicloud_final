import 'package:flutter/material.dart';
import 'package:minecloud_tal/common/theme/constants.dart';
import 'package:minecloud_tal/common/theme/text.dart';
import 'package:minecloud_tal/functions/svgIconWidget.dart';

import '../../common/theme/colors.dart';
import '../../widgets/worldPackTile/worldPackTileW.dart';

class MyPlanScreen extends StatelessWidget {
  const MyPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: kEmptyColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: darkPopupGradient,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor:
                                    Color.fromRGBO(102, 144, 184, 0.04),
                                child: Text(
                                  '75%',
                                  style: poppinsRegular(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cloud Storage',
                                  style: poppinsMedium(),
                                ),
                                SizedBox(
                                  height: maxHeight(context) * 0.02,
                                ),
                                Text(
                                  '52.3 MB used of 500 MB',
                                  style: poppinsRegular(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      height: 140,
                    ),
                  ),
                  SizedBox(
                    width: maxWidth(context) * 0.02,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: positiveBlueButtonGradient,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      'assets/images/minecloudLogo.png'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 42.0),
                                    child: Text(
                                      'www.minicloud.site',
                                      style: poppinsRegular(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: maxHeight(context),
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  buildSvgIconBox(
                                      'assets/svg/discordfilled.svg', context),
                                  buildSvgIconBox(
                                      'assets/images/Icon awesome-tw.svg',
                                      context),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    // height: maxHeight(context) * 0.04,
                                    // width: maxWidth(context) * 0.002,
                                    decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(255, 255, 255, 0.2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Webiste',
                                          style: poppinsStandard(),
                                        ),
                                        SizedBox(
                                          width: maxWidth(context) * 0.01,
                                        ),
                                        const Icon(Icons.launch)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: maxHeight(context) * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: darkPopupGradient),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Devices',
                                    style: poppinsMedium(),
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: maxHeight(context) * 0.002,
                                      width: maxWidth(context),
                                      color: kDialogBg.withOpacity(0.5),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: maxHeight(context) * 0.002,
                                        width:150,
                                        color: kPositiveBlueGui,
                                      ),
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '3 Device(s)',
                                        style: poppinsRegular(),
                                      ),
                                      Text(
                                        'of 6 total',
                                        style: poppinsRegular(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 60),
                              height: maxHeight(context) * 0.04,
                              width: maxWidth(context) * 0.002,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(102, 144, 184, 0.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Manage',
                                    style: poppinsStandard(),
                                  ),
                                  SizedBox(
                                    width: maxWidth(context) * 0.01,
                                  ),
                                  Icon(Icons.launch)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: maxWidth(context) * 0.02,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: darkPopupGradient),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor:
                                    Color.fromRGBO(102, 144, 184, 0.04),
                                child: Text(
                                  '75%',
                                  style: poppinsRegular(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Standard Plan',
                                  style: poppinsMedium(),
                                ),
                                SizedBox(
                                  height: maxHeight(context) * 0.02,
                                ),
                                Text(
                                  '21 days left • 22/06/22 ',
                                  style: poppinsRegular(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      height: 140,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

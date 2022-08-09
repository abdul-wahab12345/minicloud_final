import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minecloud_tal/common/theme/text.dart';
import 'package:minecloud_tal/screens/login/login.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/reset/mobile_reset.dart';
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
  const WebSignup({Key? key}) : super(key: key);

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

     if(mounted){
       setState(() {
        _selectedIndex = _selectedIndex + 1;
        if (_selectedIndex == 3) _selectedIndex = 0;
      });
      print('_selectedIndex $_selectedIndex');
      _pageController1.animateToPage(_selectedIndex,
          curve: Curves.easeInOut, duration: const Duration(milliseconds: 250));
     }else{
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
    return Container(
      // decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(height: kMediaQuerySize(context).height * 0.2,),

                  Center(child: Image.asset('assets/images/minecloudLogo.png')),

                  Container(
                    width: 400,
                    height: 500,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      gradient: darkPopupGradient,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Sign Up', style: poppinsMedium()),
                          darkTxtField(
                              label: 'Email', hintText: 'Enter your Email...'),
                          Column(
                            children: [
                              darkTxtField(
                                isPass: true,
                                label: 'Password',
                                hintText: 'Enter your Password...',
                                isPassHidden: isPassHidden,
                                onEyeTapped: () {
                                  setState(() => isPassHidden = !isPassHidden);
                                },
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    fillColor: MaterialStateProperty.all(
                                        kVerySpecificWhite40),
                                    value: isAgreeChecked,
                                    onChanged: (val) {
                                      setState(() {
                                        isAgreeChecked = val!;
                                      });
                                    },
                                  ),
                                  bottomDividerTxtBtn(
                                      "I agree to the ", "terms & Condition.",
                                      showDivider: false, onTap: () {
                                    showCleanDialog(
                                      context,
                                      title: 'Terms & Conditions',
                                      desc:
                                          '''fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes fdsfefeafce vefefe fewfewfew fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes fdsfefeafce vefefe fewfewfew fegreh g4gresd dsfxfwefes''',
                                      showButtons: false,
                                    );
                                  }),
                                  const Spacer()
                                ],
                              )
                            ],
                          ),
                          positiveButton('Sign Up', onPressed: () async {
                            showLoaderDialog(
                                context, 'Creating your account...');
                            await Future.delayed(
                                const Duration(seconds: 3),
                                () =>
                                    // todo Backend Email Auth Here.
                                    // print('Login done.')
                                    kNavigator(context).pop());
                            kPushNavigator(context, DashBoard(), replace: true);
                          }),
                          Row(
                            children: [
                              containerDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('OR', style: poppinsRegular()),
                              ),
                              containerDivider(),
                            ],
                          ),
                          secondaryIconButton(
                            // todo Backend Google Auth Here.
                            text: 'Continue with Google',
                            iconW: SvgPicture.asset(
                              'assets/svg/G-logo-icon.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // todo Add signup Page Here (& Backend).
                  bottomDividerTxtBtn("Already have an account? ", "Sign In.",
                      onTap: () => kPushNavigator(context, LoginScreen(),
                          replace: true)),
                ],
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:minecloud_tal/common/theme/text.dart';
import 'package:minecloud_tal/widgets/textFieldW.dart';

import '../../common/theme/colors.dart';
import '../../common/theme/constants.dart';
import '../../widgets/components/login_bottomSignUp.dart';
import '../../widgets/buttonsWs.dart';
import '../../widgets/simpleWs.dart';
import '../login/login.dart';

// ignore: must_be_immutable
class MobileResetPass extends StatelessWidget {
  MobileResetPass({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: darkBackgroundGradient),
      child: Scaffold(
        backgroundColor: kEmptyColor,
        body: RestFeilds(
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class RestFeilds extends StatefulWidget {
  RestFeilds({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  double width;
  double height;

  @override
  State<RestFeilds> createState() => _RestFeildsState();
}

class _RestFeildsState extends State<RestFeilds> {
  @override
  Widget build(BuildContext context) {
    Widget containerDivider() => Expanded(
          child: lightDivider(),
        );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // SizedBox(height: kMediaQuerySize(context).height * 0.2,),
        const SizedBox(
          height: 15,
        ),
        Center(child: Image.asset('assets/images/minecloudLogo.png')),

        Container(
          width: widget.width,
          height: widget.height,
          // height: 500,
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
                Text('Reset Password', style: poppinsMedium()),
                darkTxtField(label: 'Email', hintText: 'Enter your Email...'),
                const SizedBox(
                  height: 30,
                ),

                // todo Backend Email Reset Here.
                positiveButton('Send Email'),
                Row(
                  children: [
                    containerDivider(),
                  ],
                ),

                secondaryIconButton(
                    text: 'Log In',
                    onPressed: () => kPushNavigator(context, LoginScreen())),
              ],
            ),
          ),
        ),

        // todo Add signup Page Here (& Backend).
        bottomDividerTxtBtn("Don't have an account? ", "Sign Up."),
      ],
    );
  }
}

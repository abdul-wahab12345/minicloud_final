import 'package:flutter/material.dart';
import 'package:minecloud_tal/screens/Dashboard/dashboard.dart';
import 'package:minecloud_tal/screens/login/login.dart';
import 'package:minecloud_tal/screens/onBoarding_page.dart';
import 'package:minecloud_tal/screens/login/mobile_login.dart';
import 'package:minecloud_tal/screens/plans/plans.dart';
import 'package:minecloud_tal/screens/reset/reset.dart';
import 'package:minecloud_tal/screens/signup/signup.dart';
import 'package:minecloud_tal/screens/syncProgress_page.dart';
import 'package:provider/provider.dart';

import 'common/models/universal_models.dart';
import 'screens/Dashboard/mobile_dasboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UniModel()),
          // Provider.value(value: StreamModel().serverClient),
          // FutureProvider<List<Activity>?>.value(
          //     value: StreamModel().getFeedActivities(), initialData: const []),
        ],
        // builder:(context, child) =>
        child: const MyApp()),
  );
}


// Lib
// Lib -> dump
// Lib -> common -> models
// Lib -> common -> services
// Lib -> common -> theme
// Lib -> common -> theme -> colors.dart
// Lib -> widgets
// Lib -> screens

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  LoginScreen(),
      // home:  DashBoard(),
      // home: const Dashboard(),
    );
  }
}


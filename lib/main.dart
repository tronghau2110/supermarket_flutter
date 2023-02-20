import 'dart:async';
import 'package:supermarket_flutter/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'presentation/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FcmHelper.initFcm();
  await AwesomeNotificationsHelper.init();
  runApp(MyApp());
}

// This is the root widget of your App
class MyApp extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
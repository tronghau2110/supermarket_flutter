import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../page/page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter{}
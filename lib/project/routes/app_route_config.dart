import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/about.dart';
import 'package:gorouter/pages/contact_us.dart';
import 'package:gorouter/pages/error_page.dart';
import 'package:gorouter/pages/home.dart';
import 'package:gorouter/pages/profile.dart';
import 'package:gorouter/project/routes/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Home());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile/:username',//passing parameters through urls
        pageBuilder: (context, state) {
          return  MaterialPage(child: Profile(username: state.pathParameters['username']!,));//passing parameters
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.aboutRouteName,
        path: '/about',
        pageBuilder: (context, state) {
          return const MaterialPage(child: About());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.contactUsRouteName,
        path: '/contact_us',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ContactUs());
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
    redirect: (context, state) {
      
    },
  );
}

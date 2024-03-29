import 'package:flutter/material.dart';
import 'package:gorouter/project/routes/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: MyAppRouter().router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      title: 'GoRouter',
      routeInformationParser: MyAppRouter().router.routeInformationParser,
      routerDelegate: MyAppRouter().router.routerDelegate,
    );
  }
}

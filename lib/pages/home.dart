import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Text('Home'),
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.aboutRouteName);
              },
              child: const Text('About')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(
                    MyAppRouteConstants.profileRouteName,
                    pathParameters: {'username': 'Justin Thomas'});
              },
              child: const Text('Profile')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: const Text('ContactUs')),
        ],
      ),
    );
  }
}

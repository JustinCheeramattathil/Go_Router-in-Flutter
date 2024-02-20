import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  const Profile({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Profile'),
            ),
          ),
          Text(username),
        ],
      ),
    );
  }
}

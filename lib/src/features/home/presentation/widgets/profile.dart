import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 12),
        child: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1503235930437-8c6293ba41f5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          backgroundColor: Colors.transparent,
        ));
  }
}

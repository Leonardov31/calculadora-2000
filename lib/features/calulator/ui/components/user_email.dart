import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserEmail extends StatelessWidget {
  const UserEmail({
    Key? key,
    required this.firebaseUser,
  }) : super(key: key);

  final User? firebaseUser;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: firebaseUser != null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(firebaseUser != null ? '${firebaseUser!.email}' : ''),
      ),
    );
  }
}

import 'package:calculator/features/login/ui/login_screen.dart';
import 'package:calculator/services/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginLogoutButton extends StatelessWidget {
  const LoginLogoutButton({
    Key? key,
    required this.firebaseUser,
  }) : super(key: key);

  final User? firebaseUser;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        firebaseUser != null
            ? context.read<FirebaseAuthService>().signOut()
            : Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
      },
      icon: Icon(
        firebaseUser != null ? Icons.exit_to_app : Icons.login,
        color: firebaseUser != null ? Colors.red : Colors.teal,
      ),
    );
  }
}

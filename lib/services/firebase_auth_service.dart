import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthService(this.firebaseAuth);

  Stream<User?> get authState => firebaseAuth.idTokenChanges();

  Future<void> signIn(
    String email,
    String password,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Nenhum usuário com esse email!');
      } else if (e.code == 'wrong-password') {
        print('Senha errada!');
      }
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}

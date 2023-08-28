import 'package:sports_app/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  MyUser? _userFromFrirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFrirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
}

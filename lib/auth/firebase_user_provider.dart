import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SolveitFirebaseUser {
  SolveitFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SolveitFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SolveitFirebaseUser> solveitFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SolveitFirebaseUser>(
        (user) => currentUser = SolveitFirebaseUser(user));

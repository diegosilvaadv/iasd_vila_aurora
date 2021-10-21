import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Iasd7vilaauroraFirebaseUser {
  Iasd7vilaauroraFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

Iasd7vilaauroraFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Iasd7vilaauroraFirebaseUser> iasd7vilaauroraFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Iasd7vilaauroraFirebaseUser>(
            (user) => currentUser = Iasd7vilaauroraFirebaseUser(user));

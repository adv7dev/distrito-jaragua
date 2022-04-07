import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DistritoJaraguaFirebaseUser {
  DistritoJaraguaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

DistritoJaraguaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DistritoJaraguaFirebaseUser> distritoJaraguaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DistritoJaraguaFirebaseUser>(
            (user) => currentUser = DistritoJaraguaFirebaseUser(user));

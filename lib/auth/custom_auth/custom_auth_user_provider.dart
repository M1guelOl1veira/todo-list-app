import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class ToDoListAppAuthUser {
  ToDoListAppAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsuarioStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ToDoListAppAuthUser> toDoListAppAuthUserSubject =
    BehaviorSubject.seeded(ToDoListAppAuthUser(loggedIn: false));
Stream<ToDoListAppAuthUser> toDoListAppAuthUserStream() =>
    toDoListAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);

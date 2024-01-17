// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class User {
  final String name;
  final int age;

  const User({
    required this.name,
    required this.age,
  });

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}

//===========================================
class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(const User(name: '', age: 0));

  void updateName(String newName) {
    state = state.copyWith(name: newName);
  }

  void updateAge(int newAge) {
    state = state.copyWith(age: newAge);
  }
}

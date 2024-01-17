import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  factory User.fromMap(Map<String, dynamic> map) {
    return User(name: map['name'], email: map['email']);
  }

  factory User.fromJson(String resone) {
    return User.fromMap(json.decode(resone));
  }
}

final userProvider = Provider((ref) {
  return UserRepository();
});

class UserRepository {
  Future<User> fetchUser() {
    const url = 'https://jsonplaceholder.typicode.com/users/1';
    final response =
        http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));

    return response;
  }
}





































 // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:http/http.dart' as http;

// class User {
//   final String name;
//   final String email;
//   User({
//     required this.name,
//     required this.email,
//   });

//   factory User.fromMap(Map<String, dynamic> json) {
//     return User(
//       name: json['name'],
//       email: json['email'],
//     );
//   }

//   factory User.fromJson(String source) =>
//       User.fromMap(json.decode(source) as Map<String, dynamic>);

//   final userProvider = Provider((ref) {});
// }

// //provider for sort of  depedency injection so that don't need to creat/pass/instance the UerRepsitory Class every time.
// final userProvider = Provider((ref) {
//   return UserRepository();
// });

// class UserRepository {
// //fetch user from the web
//   Future<User> fetchUser() {
//     const url = 'https://jsonplaceholder.typicode.com/users/1';
//     final response =
//         http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
//     return response;
//   }
// }

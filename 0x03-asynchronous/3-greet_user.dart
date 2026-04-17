import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final data = await fetchUserData();
    final user = jsonDecode(data);
    return 'Hello ${user['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    final hasUser = await checkCredentials();
    print('There is a user: $hasUser');

    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
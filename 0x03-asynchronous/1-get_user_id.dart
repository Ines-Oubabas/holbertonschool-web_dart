import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final data = await fetchUserData();
  final user = jsonDecode(data);
  return user['id'];
}
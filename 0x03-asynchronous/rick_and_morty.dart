import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data['results'];

      for (final character in results) {
        print(character['name']);
      }
    } else {
      print('error caught: ${response.statusCode}');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
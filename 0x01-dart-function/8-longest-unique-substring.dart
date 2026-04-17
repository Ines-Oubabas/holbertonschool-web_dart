String longestUniqueSubstring(String str) {
  String longest = '';

  for (int i = 0; i < str.length; i++) {
    String current = '';
    Set<String> seen = {};

    for (int j = i; j < str.length; j++) {
      if (seen.contains(str[j])) {
        break;
      }
      seen.add(str[j]);
      current += str[j];
    }

    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
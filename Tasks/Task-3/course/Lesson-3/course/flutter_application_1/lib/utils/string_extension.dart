extension StringExtension on String {
  String capitalize() {
    List<String> words = split(" ");
    return words
        .map((e) => e[0].toUpperCase() + e.substring(1).toLowerCase())
        .join(" ");
  }
}

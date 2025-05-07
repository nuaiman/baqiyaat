class HarakatModel {
  final int harfId; // Links to the Harf model from Chapter 1
  final String fatha;
  final String dammah;
  final String kasrah;
  final String fathaAuidoPath;
  final String dammahAuidoPath;
  final String kasrahAuidoPath;
  HarakatModel({
    required this.harfId,
    required this.fatha,
    required this.fathaAuidoPath,
    required this.dammah,
    required this.dammahAuidoPath,
    required this.kasrah,
    required this.kasrahAuidoPath,
  });
}

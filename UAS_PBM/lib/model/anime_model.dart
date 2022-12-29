import 'dart:convert';

List<AnimeModel> AnimeModelFromJson(String str) =>
    List<AnimeModel>.from(json.decode(str).map((x) => AnimeModel.fromJson(x)));

String AnimeModelToJson(List<AnimeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AnimeModel {
  AnimeModel({
    required this.anime,
    required this.character,
    required this.quote,
  });

  String anime;
  String character;
  String quote;

  factory AnimeModel.fromJson(Map<String, dynamic> json) => AnimeModel(
        anime: json["anime"],
        character: json["character"],
        quote: json["quote"],
      );

  Map<String, dynamic> toJson() => {
        "anime": anime,
        "character": character,
        "quote": quote,
      };
}

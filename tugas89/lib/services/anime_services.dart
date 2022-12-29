import 'package:http/http.dart' as http;
import '../model/anime_model.dart';

class ListServices {
  Future<List<AnimeModel>> fetchDataList() async {
    try {
      final response = await http.get(
        Uri.parse('https://animechan.vercel.app/api/quotes'),
      );

      final List<AnimeModel> result = AnimeModelFromJson(response.body);

      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}

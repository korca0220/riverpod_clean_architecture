import 'package:dio/dio.dart';
import 'package:riverpod_ddd_practice/data/models/character_dto.dart';

class CharacterApi {
  final Dio _client;
  CharacterApi(this._client);

  Future<CharacterDto> getCharacters(int index) async {
    try {
      final response = await _client.get('character', queryParameters: {
        'page': index.toString(),
      });
      return CharacterDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}

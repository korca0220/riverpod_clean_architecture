import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/data/models/character_dto.dart';
import 'package:riverpod_ddd_practice/data/sources/remote/apis/characters_api.dart';
import 'package:riverpod_ddd_practice/data/sources/remote/client.dart';
import 'package:riverpod_ddd_practice/domain/entities/character.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_ddd_practice/domain/entities/character_list.dart';
import 'package:riverpod_ddd_practice/domain/repositories/character/character_repository.dart';
import 'package:riverpod_ddd_practice/domain/repositories/failure.dart';

final characterRepositoryProvider =
    Provider<CharacterRepository>((ref) => CharacterRepositoryImpl());

class CharacterRepositoryImpl implements CharacterRepository {
  late CharacterApi api;
  CharacterRepositoryImpl() {
    final Dio client = Client().initializeNonAuthClient();
    api = CharacterApi(client);
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharactersDatas(
      {int index = 0}) async {
    try {
      CharacterDto characterDto = await api.getCharacters(index);
      final List<CharacterEntity> characterEntityList = <CharacterEntity>[];

      for (var character in characterDto.results) {
        characterEntityList.add(
          CharacterEntity(
            characterName: character['name'],
            characterImgUrl: character['image'],
          ),
        );
      }

      return Right(characterEntityList);
    } on Exception catch (e) {
      rethrow;
    }
  }
}

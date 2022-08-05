import 'package:dartz/dartz.dart';
import 'package:riverpod_ddd_practice/domain/entities/character_list.dart';
import 'package:riverpod_ddd_practice/domain/entities/entities.dart';
import 'package:riverpod_ddd_practice/domain/repositories/failure.dart';

abstract class CharacterRepository {
  Future<Either<Failure, List<CharacterEntity>>> getCharactersDatas({int index = 0});
}

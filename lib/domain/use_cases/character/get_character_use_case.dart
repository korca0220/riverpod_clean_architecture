import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/data/repositories/repositories.dart';
import 'package:riverpod_ddd_practice/domain/entities/character.dart';
import 'package:riverpod_ddd_practice/domain/repositories/failure.dart';
import 'package:riverpod_ddd_practice/domain/repositories/repositories.dart'
    show CharacterRepository;
import 'package:riverpod_ddd_practice/global/interfaces/use_case/no_param_use_case.dart';
import 'package:riverpod_ddd_practice/global/interfaces/use_case/param_use_case.dart';

final getCharacterUseCaseProvider = Provider<GetCharacterUseCase>(
    (ref) => GetCharacterUseCase(ref.watch(characterRepositoryProvider)));

class GetCharacterUseCase
    implements ParamUseCase<Either<Failure, List<CharacterEntity>>, int> {
  final CharacterRepository _characterRepository;
  GetCharacterUseCase(this._characterRepository);

  @override
  Future<Either<Failure, List<CharacterEntity>>> execute(int index) {
    return _characterRepository.getCharactersDatas(index: index);
  }
}

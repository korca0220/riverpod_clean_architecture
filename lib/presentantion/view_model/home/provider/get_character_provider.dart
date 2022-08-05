import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/domain/entities/character.dart';
import 'package:riverpod_ddd_practice/domain/entities/character_list.dart';
import 'package:riverpod_ddd_practice/domain/use_cases/character/get_character_use_case.dart';
import 'package:riverpod_ddd_practice/presentantion/state/state.dart';

final getCharacterStateProvider =
    StateNotifierProvider<GetCharacterProvider, State<CharacterList>>((ref) {
  return GetCharacterProvider(
    ref.watch(getCharacterUseCaseProvider),
  );
});

class GetCharacterProvider extends StateNotifier<State<CharacterList>> {
  final GetCharacterUseCase _getCharacterUseCase;
  int _index = 1;

  GetCharacterProvider(
    this._getCharacterUseCase,
  ) : super(const State.initial()) {
    _getCharacterList();
  }

  Future<void> _getCharacterList() async {
    state = const State.loading();
    final result = await _getCharacterUseCase.execute(_index++);
    result.fold((l) => State.error(l), (r) {
      state = State.success(CharacterList(characters: r));
    });
  }

  Future<void> addCharacter() async {
    final result = await _getCharacterUseCase.execute(_index++);
    result.fold((l) => State.error(l), (r) {
      state = State.success(state.data!.addCharacterList(r));
    });
  }
}

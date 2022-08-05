import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/domain/entities/entities.dart';
import 'package:riverpod_ddd_practice/domain/use_cases/character/get_character_use_case.dart';

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
  return HomeViewModel(
    ref.watch(getCharacterUseCaseProvider),
  );
});

class HomeViewModel extends ChangeNotifier {
  final GetCharacterUseCase _getCharacterUseCase;
  HomeViewModel(this._getCharacterUseCase) : super() {
    _init();
  }
  late List<CharacterEntity> _characterList;

  List<CharacterEntity> get characterList => _characterList;
  int _index = 1;
  bool isLoading = false;

  _init() async {
    getCharacterList();
  }

  loadingToggle() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future getCharacterList() async {
    loadingToggle();
    final result = await _getCharacterUseCase.execute(_index++);
    result.fold((l) => print(l), (r) {
      _characterList = r;
    });
    loadingToggle();
    notifyListeners();
  }

  Future addCharacterList() async {
    final result = await _getCharacterUseCase.execute(_index++);
    result.fold((l) => print(l), (r) {
      _characterList.addAll(r);
    });
    notifyListeners();
  }
}

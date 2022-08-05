import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_ddd_practice/domain/entities/character.dart';

part 'character_list.freezed.dart';

@freezed
class CharacterList with _$CharacterList {
  const factory CharacterList({
    required List<CharacterEntity> characters,
  }) = _CharacterList;
  const CharacterList._();

  operator [](final int index) => characters[index];
  int get length => characters.length;

  CharacterList addCharacterList(final List<CharacterEntity> character) {
    return copyWith(characters: [...characters, ...character]);
  }
}

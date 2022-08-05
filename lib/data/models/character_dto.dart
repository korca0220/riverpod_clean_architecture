import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required List<Map<String, dynamic>> results,
  }) = _CharacterDto;
  const CharacterDto._();

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);

  factory CharacterDto.empty() => const CharacterDto(
        results: [],
      );
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class CharacterEntity extends Equatable {
  final String characterName;
  final String characterImgUrl;

  const CharacterEntity(
      {required this.characterName, required this.characterImgUrl});

  

  @override
  List<Object?> get props => [characterName, characterImgUrl];

  @override
  bool? get stringify => true;
}

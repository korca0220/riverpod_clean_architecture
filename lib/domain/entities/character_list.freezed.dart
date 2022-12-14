// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterList {
  List<CharacterEntity> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListCopyWith<CharacterList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListCopyWith<$Res> {
  factory $CharacterListCopyWith(
          CharacterList value, $Res Function(CharacterList) then) =
      _$CharacterListCopyWithImpl<$Res>;
  $Res call({List<CharacterEntity> characters});
}

/// @nodoc
class _$CharacterListCopyWithImpl<$Res>
    implements $CharacterListCopyWith<$Res> {
  _$CharacterListCopyWithImpl(this._value, this._then);

  final CharacterList _value;
  // ignore: unused_field
  final $Res Function(CharacterList) _then;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_CharacterListCopyWith<$Res>
    implements $CharacterListCopyWith<$Res> {
  factory _$$_CharacterListCopyWith(
          _$_CharacterList value, $Res Function(_$_CharacterList) then) =
      __$$_CharacterListCopyWithImpl<$Res>;
  @override
  $Res call({List<CharacterEntity> characters});
}

/// @nodoc
class __$$_CharacterListCopyWithImpl<$Res>
    extends _$CharacterListCopyWithImpl<$Res>
    implements _$$_CharacterListCopyWith<$Res> {
  __$$_CharacterListCopyWithImpl(
      _$_CharacterList _value, $Res Function(_$_CharacterList) _then)
      : super(_value, (v) => _then(v as _$_CharacterList));

  @override
  _$_CharacterList get _value => super._value as _$_CharacterList;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_$_CharacterList(
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc

class _$_CharacterList extends _CharacterList {
  const _$_CharacterList({required final List<CharacterEntity> characters})
      : _characters = characters,
        super._();

  final List<CharacterEntity> _characters;
  @override
  List<CharacterEntity> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharacterList(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterList &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterListCopyWith<_$_CharacterList> get copyWith =>
      __$$_CharacterListCopyWithImpl<_$_CharacterList>(this, _$identity);
}

abstract class _CharacterList extends CharacterList {
  const factory _CharacterList(
      {required final List<CharacterEntity> characters}) = _$_CharacterList;
  const _CharacterList._() : super._();

  @override
  List<CharacterEntity> get characters;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListCopyWith<_$_CharacterList> get copyWith =>
      throw _privateConstructorUsedError;
}

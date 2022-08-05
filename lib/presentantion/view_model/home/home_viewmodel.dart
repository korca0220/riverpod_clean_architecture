import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/domain/entities/entities.dart';
import 'package:riverpod_ddd_practice/domain/use_cases/character/get_character_use_case.dart';
import 'package:riverpod_ddd_practice/presentantion/view_model/home/provider/get_character_provider.dart';

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends ChangeNotifier {
  final getCharacterProvider = getCharacterStateProvider;
  HomeViewModel();
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ddd_practice/presentantion/view_model/home/home_viewmodel.dart';

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Center(
            child: InkWell(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              onTap: () {
                viewModel.addCharacterList();
              },
            ),
          ),
          Expanded(
            child: viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: viewModel.characterList.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title:
                            Text(viewModel.characterList[index].characterName),
                        subtitle: SizedBox(
                          height: 100,
                          child: Image.network(
                              viewModel.characterList[index].characterImgUrl),
                        ),
                      );
                    }),
                  ),
          ),
        ]),
      ),
    );
  }
}

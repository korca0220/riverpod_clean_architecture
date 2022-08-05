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
                ref
                    .watch(viewModel.getCharacterProvider.notifier)
                    .addCharacter();
              },
            ),
          ),
          Expanded(
            child: ref.watch(viewModel.getCharacterProvider).maybeWhen(
                  orElse: () => const Center(child: Text('No Data')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  success: (value) => ListView.builder(
                    itemCount: value.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text(value[index].characterName),
                        subtitle: SizedBox(
                          height: 100,
                          child: Image.network(value[index].characterImgUrl),
                        ),
                      );
                    }),
                  ),
                ),
          ),
        ]),
      ),
    );
  }
}

import 'package:copia_netflix/viewmodel/search_viewmodel.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final SearchViewModelImpl vm;
  final TextEditingController controller;

  SearchField({
    required this.controller,
    required this.vm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: StreamBuilder<bool>(
        stream: vm.outputWasTyped,
        builder: (ctx, snapshot) => TextField(
          keyboardType: TextInputType.text,
          controller: controller,
          onChanged: (text) => vm.onTextChange(text),
          autofocus: true,
          cursorColor: Theme.of(context).colorScheme.secondary,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusColor: Colors.white,
            hintText: 'Busque por série, filme, gênero, etc.',
            icon: const Icon(
              Icons.search,
              color: Colors.white70,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.mic,
                color: Colors.white70,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

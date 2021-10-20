import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: TextFormField(
        keyboardType: TextInputType.text,
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
    );
  }
}

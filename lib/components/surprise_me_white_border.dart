import 'package:copia_netflix/viewmodel/surprise_me_viewmodel.dart';
import 'package:flutter/material.dart';

class SurpriseMeWhiteBorder extends StatelessWidget {
  final Widget child;
  final SurpriseMeViewModelImpl vm;

  const SurpriseMeWhiteBorder({
    Key? key,
    required this.vm,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary, width: 3),
      ),
      child: child,
    );
  }
}

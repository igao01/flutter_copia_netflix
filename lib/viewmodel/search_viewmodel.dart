import 'dart:async';

abstract class SearchViewModel {
  // Sink o que é passado da view para viewmodel
  // View >>>> ViewModel
  Sink get inputSearchText;

  // Stream o que é passado da viewmodel para view
  // View <<<< ViewModel
  Stream<bool> get outputWasTyped;

  void dispose();
}

class SearchViewModelImpl implements SearchViewModel {
  final _searchTextController = StreamController<String>.broadcast();

  @override
  Sink get inputSearchText => _searchTextController;

  @override
  Stream<bool> get outputWasTyped => _searchTextController.stream.map(
        (search) => search.isNotEmpty,
      );

  @override
  void dispose() => _searchTextController.close();

  void onTextChange(String text) {
    print('FUNCIONOU ON TEXT CHANGE: $text');
  }
}

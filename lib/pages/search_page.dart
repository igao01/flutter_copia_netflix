import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/search_field.dart';
import 'package:copia_netflix/components/search_title_item.dart';
import 'package:copia_netflix/viewmodel/search_viewmodel.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _viewModel = SearchViewModelImpl();

  @override
  void initState() {
    _controller
        .addListener(() => _viewModel.inputSearchText.add(_controller.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisa'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          AppBarActions(
            // passa parametro como true para o icone de pesquisa
            // ser ocultado da pagina de pesquisa
            wasCalledBySearchPage: true,
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchField(
              vm: _viewModel,
              controller: _controller,
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Principais buscas',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, index) => const SearchTitleItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

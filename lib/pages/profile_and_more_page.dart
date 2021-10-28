import 'package:copia_netflix/components/profile_and_more_item.dart';
import 'package:copia_netflix/components/profile_and_more_share_info.dart';
import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class ProfileAndMorePage extends StatelessWidget {
  const ProfileAndMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextButton _createText(String text, Function() onPressed) {
      return TextButton(
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Colors.grey[300],
              ),
        ),
        onPressed: onPressed,
      );
    }

    TextButton _createTextButtonIcon(
        String label, IconData icon, Function() onPressed) {
      return TextButton.icon(
        label: Text(
          label,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Colors.grey[300],
              ),
        ),
        icon: Icon(
          icon,
          color: Colors.grey,
          size: 18,
        ),
        onPressed: onPressed,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfis e mais'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileAndMoreItem(),
                  ProfileAndMoreItem(),
                  ProfileAndMoreItem(),
                  ProfileAndMoreItem(),
                  ProfileAndMoreItem(),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: _createTextButtonIcon(
                  'Gerenciar perfis',
                  Icons.edit,
                  () {},
                ),
              ),
              const ProfileAndMoreShareInfo(),
              _createTextButtonIcon(
                'Minha lista',
                Icons.check,
                () => Navigator.of(context).pushNamed(AppRoutes.myList),
              ),
              const Divider(color: Colors.grey),
              _createText('Configurações do aplicativo', () {}),
              _createText('Conta', () {}),
              _createText('Ajuda', () {}),
              _createText('Sair', () {}),
            ],
          ),
        ),
      ),
    );
  }
}

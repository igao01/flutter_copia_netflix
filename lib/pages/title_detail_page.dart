import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/highlight_elevated_button.dart';
import 'package:copia_netflix/components/titile_detail_icon_buttons.dart';
import 'package:copia_netflix/components/title_detail_caption.dart';
import 'package:copia_netflix/components/title_detail_episode_item.dart';
import 'package:copia_netflix/components/title_detail_select_season_button.dart';
import 'package:flutter/material.dart';

class TitileDetailPage extends StatelessWidget {
  const TitileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: const [AppBarActions()],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/em-breve-img.webp',
                fit: BoxFit.fill,
                height: 300,
              ),
              const SizedBox(height: 8),
              Text(
                'Trollhunter',
                style: Theme.of(context).textTheme.headline6,
              ),
              const TitleDetailCaption(),
              const SizedBox(height: 8),
              const SizedBox(
                width: double.infinity,
                child: HighlightElevatedButton(),
              ),
              _titleDetailElevatedButtons(context),
              const SizedBox(height: 8),
              _description(context),
              const SizedBox(height: 4),
              Row(
                children: [
                  _boldTextCapion(context, 'Estrelando:'),
                  const SizedBox(width: 3),
                  Text(
                    'Kelsey Grammer, Emile Hirsch, Charlie Saxton',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const TitleDetailIconButtons(),
              const SizedBox(height: 16),
              const Divider(color: Colors.grey),
              Text(
                'Episódios',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 16),
              const TitleDetailSelectSeasonButton(),
              SizedBox(
                height: 760,
                child: Column(
                  children: const [
                    TitleDetailEpisodeItem(),
                    TitleDetailEpisodeItem(),
                    TitleDetailEpisodeItem(),
                    TitleDetailEpisodeItem(),
                    TitleDetailEpisodeItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _description(BuildContext context) {
    return Text(
      'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
      style: Theme.of(context).textTheme.bodyText1,
      softWrap: true,
    );
  }

  SizedBox _titleDetailElevatedButtons(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.download_rounded),
        label: Text(
          'Download T1:E1',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                backgroundColor: Theme.of(context).colorScheme.surface,
              ),
        ),
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        onPressed: () {},
      ),
    );
  }
}

Text _boldTextCapion(BuildContext context, String label) {
  return Text(
    label,
    style: Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.bold,
        ),
  );
}

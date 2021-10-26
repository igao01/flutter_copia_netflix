import 'package:copia_netflix/components/em_breve_item.dart';
import 'package:copia_netflix/viewmodel/em_breve_viewmodel.dart';
import 'package:flutter/material.dart';

class EmBrevePageContent extends StatelessWidget {
  const EmBrevePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = EmBreveViewmodelImpl();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.82,
      child: Column(
        children: [
          InkWell(
            child: Row(
              children: [
                const Icon(Icons.notifications_outlined),
                const SizedBox(width: 10),
                Text(
                  'Notificações',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ],
            ),
            onTap: () => vm.openNotificationsPage(context),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (ctx, index) => const EmBreveItem(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:copia_netflix/components/modal_detail_info.dart';
import 'package:copia_netflix/components/modal_title_detail_buttons.dart';
import 'package:copia_netflix/components/modal_title_detail_more_info.dart';
import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class ModalTitleDetail extends StatelessWidget {
  const ModalTitleDetail({
    Key? key,
    required this.mediaSize,
  }) : super(key: key);

  final Size mediaSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: mediaSize.width,
      color: Theme.of(context).colorScheme.surface,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: ModalTitleDetailInfo(mediaSize: mediaSize),
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.titleDetail),
              ),
              ModalTitleDetailButtons(mediaSize: mediaSize),
              Divider(
                color: Colors.grey[600],
              ),
              InkWell(
                child: const ModalTitleDetailMoreInfo(),
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.titleDetail),
              ),
            ],
          ),
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}

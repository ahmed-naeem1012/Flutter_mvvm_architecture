// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/view_model/list_picture_viewmodel.dart';

class PictureDialog extends StatelessWidget {
  final int index;
  final ListPictureViewModel listPictureViewModel;

  const PictureDialog({
    Key? key,
    required this.index,
    required this.listPictureViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Picture $index'),
      content: Text(
          'You tapped on picture $index whose url is ${listPictureViewModel.pictures![index].picSumModel!.url}'),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

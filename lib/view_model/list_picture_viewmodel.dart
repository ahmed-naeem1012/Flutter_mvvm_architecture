// ignore_for_file: unnecessary_this

import 'package:flutter_mvvm_architecture/model/picsummodel.dart';
import 'package:flutter_mvvm_architecture/services/services.dart';

// VIEWMODEL TO PROCESS LOGIC TO MAKE IT THE WAY TO MAKE IT VISIBLE FOR VIEWING
class ListPictureViewModel {
  List<PictureViewModel>? pictures;
  Future<void> fetchPictures() async {
    final apiresult = await Services().fetchPicturesApi();
    this.pictures = apiresult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}

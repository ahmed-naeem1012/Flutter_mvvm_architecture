import 'dart:convert';
import 'package:flutter_mvvm_architecture/model/picsummodel.dart';
import 'package:http/http.dart' as http;

// SERVICES TO GET THE DATA FROM THE API OF PICSUM

class Services {
  Future<List<PicSumModel>> fetchPicturesApi() async {
    String Url = "https://picsum.photos/v2/list";
    final response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List<dynamic>;
      final listresult = json.map((e) => PicSumModel.fromJson(e)).toList();
      return listresult;
    } else {
      throw Exception("Error Fetching Data");
    }
  }
}

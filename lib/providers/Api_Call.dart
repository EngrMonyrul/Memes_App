import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:memesapp/models/MemesModel.dart';
import 'package:http/http.dart' as http;

class ApiCall with ChangeNotifier {
  List<MemesModel> memesLists = [];
  Future<MemesModel> getMemesData() async {
    final response = await http.get(Uri.parse(
        'https://api.imgflip.com/get_memes?fbclid=IwAR16i6vklYhSsOFdtMTlhKBxrsBFP2SucwgwgLY0MJdAkSF101-MWKS1aSU'));
    var body = jsonDecode(response.body);
    //var body2 = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      // for (Map i in body2) {
      //   memesLists.add(MemesModel.fromJson(i));
      // }

      return MemesModel.fromJson(body);
    } else {
      return MemesModel.fromJson(body);
    }
  }
}

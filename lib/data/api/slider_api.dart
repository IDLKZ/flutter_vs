import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:visitapp/data/models/slider_model.dart';
import 'package:visitapp/helpers/constants/constants.dart';

class SliderApi{

  Future <SliderList> getAll() async{
    dynamic response = await http.get(Uri.parse(APIURL + "sliders"));
    if(response.statusCode == 200){
      return SliderList.fromJson(json.decode(response.body));
    }
    else{
      return throw Exception("something went wrong");
    }



  }



}
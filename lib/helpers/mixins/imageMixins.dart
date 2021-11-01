import 'package:visitapp/helpers/constants/constants.dart';

class imageMixin{

  static String getImage(String?image){
    if(image != null){
      return api_image + image;
    }
    return NoImage;
  }






}
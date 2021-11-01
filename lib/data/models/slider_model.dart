import 'package:visitapp/helpers/mixins/imageMixins.dart';

class SliderList{

  List<Slider> sliders;
  SliderList({required this.sliders});

  factory SliderList.fromJson(List<dynamic> json){
    List<Slider> sliderList = [];
    for(var item in json){
      sliderList.add(new Slider.fromJson(item));
    }
    return SliderList(sliders: sliderList);
  }

}

class Slider {
  late int id;
  late String titleRu;
  late String titleKz;
  late String titleEn;
  late String descriptionRu;
  late String descriptionKz;
  late String descriptionEn;
  late String buttonRu;
  late String buttonKz;
  late String buttonEn;
  late String link;
  late String image;
  late int number;
  late int status;
  late String createdAt;
  late String updatedAt;

  Slider(
      {
        required this.id,
        required this.titleRu,
        required this.titleKz,
        required this.titleEn,
        required this.descriptionRu,
        required this.descriptionKz,
        required this.descriptionEn,
        required this.buttonRu,
        required this.buttonKz,
        required this.buttonEn,
        required this.link,
        required this.image,
        required this.number,
        required this.status,
        required this.createdAt,
        required this.updatedAt
      });

  Slider.fromJson(Map<String, dynamic> json) {
     id = json['id'];
    titleRu = json['title_ru'];
    titleKz = json['title_kz'];
    titleEn = json['title_en'];
    descriptionRu = json['description_ru'];
    descriptionKz = json['description_kz'];
    descriptionEn = json['description_en'];
    buttonRu = json['button_ru'];
    buttonKz = json['button_kz'];
    buttonEn = json['button_en'];
    link = json['link'];
    image = imageMixin.getImage(json['image'] as String);
    number = json['number'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_ru'] = this.titleRu;
    data['title_kz'] = this.titleKz;
    data['title_en'] = this.titleEn;
    data['description_ru'] = this.descriptionRu;
    data['description_kz'] = this.descriptionKz;
    data['description_en'] = this.descriptionEn;
    data['button_ru'] = this.buttonRu;
    data['button_kz'] = this.buttonKz;
    data['button_en'] = this.buttonEn;
    data['link'] = this.link;
    data['image'] = this.image;
    data['number'] = this.number;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
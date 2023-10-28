import 'package:capstone_flutter/components/gen/assets_gen.dart';

class CategoryUser {
  String? name;
  String? image;

  CategoryUser();
}

List<CategoryUser> categories = [
  CategoryUser()
    ..name = "Cá Kho"
    ..image = Assets.images.cakho.path,
  CategoryUser()
    ..name = "Cơm Chiên"
    ..image = Assets.images.comchien.path,
  CategoryUser()
    ..name = "Thịt Kho"
    ..image = Assets.images.thitkho.path,
];

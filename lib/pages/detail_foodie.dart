import 'dart:io';

import 'package:capstone_flutter/components/app_avartar.dart';
import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/components/text_field/app_text_field_comment.dart';
import 'package:capstone_flutter/models/category_user.dart';
import 'package:capstone_flutter/models/foodie_model.dart';
import 'package:capstone_flutter/models/user_model.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class detailFoodie extends StatefulWidget {
  const detailFoodie({
    Key? key,
    required this.foodie,
    required this.user,
    required this.category,
  }) : super(key: key);

  final FoodieModel foodie;
  final UserModel user;
  final CategoryUser category;

  @override
  State<detailFoodie> createState() => _detailFoodieState();
}

class _detailFoodieState extends State<detailFoodie> {
  SharedPrefs prefs = SharedPrefs();
  String? avatar;
  String? ratingText;
  List<FoodieModel> foodie = [];
  List<UserModel> user = [];

  Future<void> _pickAvatar() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result == null) return;
    avatar = result.files.single.path!;
    prefs.saveAvatarPath(avatar ?? '');
  }

  void _getAvatar() {
    prefs.getAvatarPath().then((valueStr) {
      File(valueStr ?? '').exists().then((value) {
        if (value) {
          avatar = valueStr;
        } else {
          avatar = null;
        }
        setState(() {});
      });
    });
  }

  String _formatIngredients(List<String> ingredients) {
    return ingredients.join('\n');
  }

  String? getUserNameByID(String? userID) {
    UserModel? user = users.firstWhere((user) => user.id == userID,
        orElse: () => UserModel(id: '0', name: 'Unknown user', comment: ''));
    return user.name;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 40.0,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.symmetric(horizontal: 22.0),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      widget.foodie.imageUrl ?? '',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.category.name ?? '',
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Divider(
                    height: 30.0,
                    thickness: 1.2,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: AppColor.grey,
                  ),
                  AppAvatar(
                    avatar: avatar,
                    isActive: true,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        const Text(
                          'Cooking Time: ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          widget.foodie.cookingTime ?? '',
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ingredient: ',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _formatIngredients(
                              widget.foodie.ingredients,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Making: ',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '1: ',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          widget.foodie.step1.toString(),
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 30.0,
                    thickness: 1.2,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: AppColor.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '2: ',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          widget.foodie.step2 as String,
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 30.0,
                    thickness: 1.2,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: AppColor.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '3: ',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          widget.foodie.step3 as String,
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  AppElevatedButton.outline(
                    text: 'Link Video',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.foodie.videoUrl ?? '',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Excellent',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColor.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Comments',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColor.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          AppAvatar(
                            avatar: avatar,
                            isActive: true,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                users[index].name ?? '',
                                style: const TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                users[index].comment ?? '',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10.0),
                    itemCount: users.length,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Positioned.fill(
                    child: Container(
                      height: 500.0,
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.symmetric(horizontal: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColor.white,
                        border: Border.all(
                          color: AppColor.black,
                          width: 2.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 9.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              String ratingText =
                                  'You rated ${rating.toInt()} star';
                              if (rating.toInt() != 1) {
                                ratingText += 's';
                              }
                              setState(() {
                                this.ratingText = ratingText;
                              });
                            },
                          ),
                          Text(
                            ratingText ?? '',
                            style: const TextStyle(
                              color: AppColor.black,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          const Expanded(
                            child: AppTextFieldComment(
                              hintext: 'Add comments....',
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          AppElevatedButton.small(
                            text: 'Submit',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

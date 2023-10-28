class FoodieModel {
  String? id;
  String? name;
  String? imageUrl;
  String? avatar;
  String? cookingTime;
  List<String> ingredients = [];
  String? step1;
  String? step2;
  String? step3;
  String? videoUrl;

  FoodieModel({
    this.id,
    this.name,
    this.imageUrl,
    this.avatar,
    this.cookingTime,
    this.ingredients = const [],
    this.step1,
    this.step2,
    this.step3,
    this.videoUrl,
  });
}

List<FoodieModel> foods = [
  FoodieModel()
    ..id = '1'
    ..name = 'Thịt Kho Rim Ớt'
    ..imageUrl = 'assets/images/cakho.png'
    ..avatar = 'assets/images/default_avatar.png'
    ..cookingTime = '30 minutes'
    ..ingredients = [
      'Bok Choy',
      'Beef',
      'Spring onion',
      'Purple onion, garlic',
      'Seasoning: Cooking oil, fish sauce, salt',
      'and pepper...',
    ]
    ..step1 =
        'You buy raw materials and prepare them. Washing beef with warm water will be cleaner and safer. After washing, let the meat drain and then cut into thin pieces.Separate the spinach into branches, remove withered leaves, then wash. You can soak them in diluted salt water for 10 minutes and then remove them to the rack. Cut the vegetables into two pieces or leave them whole and stir-fry.Peel the purple onions and garlic, then chop them finely to fry until fragrant.'
    ..step2 =
        'Put the pan on the stove to make a cone, add cooking oil, saute the onion and garlic until fragrant, wait for the garlic to turn golden, add the beef and stir-fry for about 4-5 minutes, until the beef is cooked and pour into a bowl. Next, in the same pan, add oil, wait for the oil to heat, add collard greens and stir-fry with 1 tablespoon of soup powder. Stir-fry for about 1 minute, add a bowl of filtered water and cook to help soften the vegetables without burning.'
    ..step3 =
        'When the vegetables are cooked, add the beef in the bowl and stir, add spices such as: seasoning powder, MSG and stir well so that the meat and vegetables absorb the spices. Note, when stir-frying, you should not cover the pot as the vegetables will turn yellow and not have a beautiful color. Notice that the vegetables and beef are just cooked, do not stir-fry for too long or the vegetables will fall apart, the beef will not be sweet and will lose its nutrients'
    ..videoUrl = 'https://www.youtube.com/ca_kho',
  FoodieModel()
    ..id = '2'
    ..name = 'Cơm Chiên'
    ..imageUrl = 'assets/images/comchien.png'
    ..avatar = 'assets/images/default_avatar.png'
    ..cookingTime = '15 minutes'
    ..ingredients = [
      'Bok Choy',
      'Beef',
    ]
    ..step1 =
        'You buy raw materials and prepare them. Washing beef with warm water will be cleaner and safer. After washing, let the meat drain and then cut into thin pieces.Separate the spinach into branches, remove withered leaves, then wash. You can soak them in diluted salt water for 10 minutes and then remove them to the rack. Cut the vegetables into two pieces or leave them whole and stir-fry.Peel the purple onions and garlic, then chop them finely to fry until fragrant.'
    ..step2 =
        'Put the pan on the stove to make a cone, add cooking oil, saute the onion and garlic until fragrant, wait for the garlic to turn golden, add the beef and stir-fry for about 4-5 minutes, until the beef is cooked and pour into a bowl. Next, in the same pan, add oil, wait for the oil to heat, add collard greens and stir-fry with 1 tablespoon of soup powder. Stir-fry for about 1 minute, add a bowl of filtered water and cook to help soften the vegetables without burning.'
    ..step3 =
        'When the vegetables are cooked, add the beef in the bowl and stir, add spices such as: seasoning powder, MSG and stir well so that the meat and vegetables absorb the spices. Note, when stir-frying, you should not cover the pot as the vegetables will turn yellow and not have a beautiful color. Notice that the vegetables and beef are just cooked, do not stir-fry for too long or the vegetables will fall apart, the beef will not be sweet and will lose its nutrients'
    ..videoUrl = 'https://www.youtube.com/ca_kho'
];

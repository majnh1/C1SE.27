class FoodieModel {
  String? id;
  String? name;
  String? imageUrl;
  String? avatar;
  String? cookingTime;
  List<String> ingredients = [];
  List<String> steps = [];
  String? videoUrl;

  FoodieModel({
    this.id,
    this.name,
    this.imageUrl,
    this.avatar,
    this.cookingTime,
    this.ingredients = const [],
    this.videoUrl,
    this.steps = const [],
  });

  void addStepNumber(String stepNumber) {
    steps.add(stepNumber);
    stepNumber = steps.length.toString();
  }
}

List<FoodieModel> foods = [
  FoodieModel()
    ..id = '1'
    ..name = 'Thịt Kho Rim Ớt'
    ..imageUrl = 'assets/images/bigCakho.png'
    ..avatar = 'assets/images/default_avatar.png'
    ..cookingTime = '30 minutes'
    ..ingredients = [
      'Bok Choy',
      'Beef Fish',
      'Spring onion',
      'Purple onion, garlic',
      'Seasoning: Cooking oil, fish sauce, salt',
      'and pepper...',
    ]
    ..steps = [
      'You buy raw materials and prepare them. Washing beef with warm water will be cleaner and safer. After washing, let the meat drain and then cut into thin pieces.Separate the spinach into branches, remove withered leaves, then wash. You can soak them in diluted salt water for 10 minutes and then remove them to the rack. Cut the vegetables into two pieces or leave them whole and stir-fry.Peel the purple onions and garlic, then chop them finely to fry until fragrant.',
      'Put the pan on the stove to make a cone, add cooking oil, saute the onion and garlic until fragrant, wait for the garlic to turn golden, add the beef and stir-fry for about 4-5 minutes, until the beef is cooked and pour into a bowl. Next, in the same pan, add oil, wait for the oil to heat, add collard greens and stir-fry with 1 tablespoon of soup powder. Stir-fry for about 1 minute, add a bowl of filtered water and cook to help soften the vegetables without burning.',
      'When the vegetables are cooked, add the beef in the bowl and stir, add spices such as: seasoning powder, MSG and stir well so that the meat and vegetables absorb the spices. Note, when stir-frying, you should not cover the pot as the vegetables will turn yellow and not have a beautiful color. Notice that the vegetables and beef are just cooked, do not stir-fry for too long or the vegetables will fall apart, the beef will not be sweet and will lose its nutrients',
    ]
    ..videoUrl = 'https://www.youtube.com/watch?v=_AOL5djF92w',
  FoodieModel()
    ..id = '2'
    ..name = 'Cơm Chiên'
    ..imageUrl = 'assets/images/bigComchien.png'
    ..avatar = 'assets/images/default_avatar.png'
    ..cookingTime = '15 minutes'
    ..ingredients = [
      '1 bowl of cold rice',
      '100g pork sausage',
      '100g sausage',
      '5 chicken eggs',
      '1 carrot',
      '100g cowpeas',
      '3 chopped garlic bulbs',
      '5 eggplant onions',
      'finely chopped green onions',
      'Spices: salt, seasoning powder',
      'cooking oil, soy sauce',
    ]
    ..steps = [
      'Peel the carrots, wash them, cut them into cubes, strip the cowpeas and cut them into cubes. Pork sausage, diced sausage. Crack 3 eggs into a bowl and beat the cashews, add 1/2 teaspoon of seasoning powder, 1 tablespoon of fish sauce, then beat the spices well, put the eggs in and fry until cooked, then cut into strips.',
      'Crack 2 eggs into a bowl of rice, then use a spoon to mash them evenly. Next add 1 tablespoon of fish sauce and pepper and mix well.',
      'Put the pan on the stove, add 1 tablespoon of cooking oil and wait until hot, then add chopped garlic and fry until fragrant, then add carrots and cowpeas and stir-fry together for 3 minutes, then add oyster sauce and 1 tablespoon of seeds. Season and stir well.',
      'Put 2 tablespoons of cooking oil in the pan, saute minced garlic, add rice mixed with eggs and fry over high heat, stirring continuously until the rice is cooked. Next, add 1 tablespoon of salt and pepper, stir together, then put all the stir-fried ingredients in the pan and fry for 15 minutes over high heat, finally add the chopped green onions.',
    ]
    ..videoUrl = 'https://www.youtube.com/ca_kho',
  FoodieModel()
    ..id = '3'
    ..name = 'Thịt Kho'
    ..imageUrl = 'assets/images/bigThitkho.png'
    ..avatar = 'assets/images/default_avatar.png'
    ..cookingTime = '45 minutes'
    ..ingredients = [
      'Bok Choy',
      'Beef',
      'Meel',
    ]
    ..steps = [
      'Peel the carrots, wash them, cut them into cubes, strip the cowpeas and cut them into cubes. Pork sausage, diced sausage. Crack 3 eggs into a bowl and beat the cashews, add 1/2 teaspoon of seasoning powder, 1 tablespoon of fish sauce, then beat the spices well, put the eggs in and fry until cooked, then cut into strips.',
      'Crack 2 eggs into a bowl of rice, then use a spoon to mash them evenly. Next add 1 tablespoon of fish sauce and pepper and mix well.',
      'Put the pan on the stove, add 1 tablespoon of cooking oil and wait until hot, then add chopped garlic and fry until fragrant, then add carrots and cowpeas and stir-fry together for 3 minutes, then add oyster sauce and 1 tablespoon of seeds. Season and stir well.',
      'Put 2 tablespoons of cooking oil in the pan, saute minced garlic, add rice mixed with eggs and fry over high heat, stirring continuously until the rice is cooked. Next, add 1 tablespoon of salt and pepper, stir together, then put all the stir-fried ingredients in the pan and fry for 15 minutes over high heat, finally add the chopped green onions.',
    ]
    ..videoUrl = 'https://www.youtube.com/ca_kho',
];

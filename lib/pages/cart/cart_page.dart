import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';
import '../../components/app_bar/foodie_app_bar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FoodieAppBar(
        // leftPressed: () => _confirmExitApp(),
        title: 'Foodie Social',
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0)
                      .copyWith(top: 4.0, bottom: 14.0),
                  child: const Search_Box(),
                ),
                const Divider(
                  height: 1.2,
                  thickness: 1.2,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: AppColor.grey,
                ),
                const Align(
                  alignment: Alignment(-0.9, 0),
                  child: Text(
                    'Trang Chủ',
                    style: TextStyle(
                      fontSize: 20.0,
                      height: 3.0,
                      color: AppColor.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  right: 20.0,
                  bottom: 72.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: AppElevatedButton.smallOutline(
                          onPressed: () {},
                          text: 'Popular',
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Expanded(
                        child: AppElevatedButton.smallOutline(
                          text: 'LiveStream',
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Future<void> _confirmExitApp() async {}
}

class Search_Box extends StatelessWidget {
  const Search_Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: boxShadow,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
          enabledBorder: inputBorderSearch,
          focusedBorder: inputBorderSearch,
          hintText: 'Search...',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(Icons.search, color: AppColor.orange),
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 36.0),
        ),
      ),
    );
  }
}

final inputBorderSearch = OutlineInputBorder(
  borderSide: const BorderSide(color: AppColor.orange),
  borderRadius: BorderRadius.circular(20.0),
);

final boxShadow = [
  const BoxShadow(
    color: AppColor.shadow,
    offset: Offset(0.0, 3.0),
    blurRadius: 6.0,
  ),
];

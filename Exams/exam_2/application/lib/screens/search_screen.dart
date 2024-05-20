import 'package:application/classes/smoothies.dart';
import 'package:application/functions/assistants.dart';
import 'package:application/functions/search_bar.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();

  void toggleClear() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _controller.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    searchBar(toggleClear, _controller, context),
                    Text(
                      "Trending Search",
                      style: Tools.boldStyle.copyWith(fontSize: 22.sp),
                    ),
                    searchButtons(),
                  ],
                )),
            Text(
              "Recommodation",
              style: Tools.boldStyle.copyWith(fontSize: 22.sp),
            ),
            Expanded(
                flex: 6,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1 / 2),
                  itemCount: Smoothies.smoothiesDataList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => RecipeScreen(
                                    index: Smoothies
                                        .smoothiesDataList[index].index)));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 170.sp,
                            width: 200.sp,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Smoothies
                                    .smoothiesDataList[index].mainImage),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          5.height(),
                          Text(
                            Smoothies.smoothiesDataList[index].highName,
                            style: Tools.boldStyle.copyWith(fontSize: 16),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFFC529),
                                size: 30,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              4.width(),
                              Text(
                                "(2+)",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

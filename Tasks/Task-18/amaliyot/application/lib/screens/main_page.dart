import 'package:application/classes/models/general_models.dart';
import 'package:application/utils/extensions/extensions_general.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:application/widgets/general_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

final secondWidget = SvgPicture.string(
    """<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect opacity="0.8" y="5" width="18" height="8" rx="2" fill="#194B38"/>
<rect opacity="0.5" y="1" width="18" height="2" rx="1" fill="#194B38"/>
<rect opacity="0.5" y="15" width="18" height="2" rx="1" fill="#194B38"/>
</svg>
""");
final firstWidget = SvgPicture.string(
  """<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect opacity="0.8" x="10" y="10" width="8" height="8" rx="2" fill="#194B38"/>
<rect opacity="0.8" y="10" width="8" height="8" rx="2" fill="#194B38"/>
<rect opacity="0.5" x="10" width="8" height="8" rx="2" fill="#194B38"/>
<rect opacity="0.8" width="8" height="8" rx="2" fill="#194B38"/>
</svg>

""",
  height: 25,
);
bool svgWidget = true;
List<GeneralModels> ProductList = [
  GeneralModels(
      FruitImage: "assets/images/image1.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFEBF4F1)),
  GeneralModels(
      FruitImage: "assets/images/image2.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFF3F3EA)),
  GeneralModels(
      FruitImage: "assets/images/image3.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFF3E9DD)),
  GeneralModels(
      FruitImage: "assets/images/image4.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFF8ECEC)),
  GeneralModels(
      FruitImage: "assets/images/image5.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFF8F5DE)),
  GeneralModels(
      FruitImage: "assets/images/image6.png",
      FruitTitle: "Fruits",
      FruitSubtitle: "112 Items",
      FruitColor: const Color(0xFFF9E9D2))
];
bool jumpToSecond = true;

class _MainPage extends State<MainPage> {
  void toggleWigetIcon() {
    setState(() {
      svgWidget = !svgWidget;
      jumpToSecond = !jumpToSecond;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        leadingWidth: 80,
        actions: [
          SizedBox(
            width: 80,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag),
              iconSize: 35,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            20.height(),
            search(),
            20.height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All categories",
                  style: Tools.boldStyle,
                ),
                InkWell(
                  onTap: () {
                    toggleWigetIcon();
                  },
                  child: svgWidget ? firstWidget : secondWidget,
                )
              ],
            ),
            20.height(),
            Expanded(
                child: jumpToSecond
                    ? GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: [
                          ...List.generate(
                              ProductList.length,
                              (index) =>
                                  productOne(ProductList[index], jumpToSecond))
                        ],
                      )
                    : ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 15,
                          );
                        },
                        itemCount: ProductList.length,
                        itemBuilder: (context, index) {
                          return productOne(ProductList[index], jumpToSecond);
                        }))
          ],
        ),
      ),
    );
  }
}

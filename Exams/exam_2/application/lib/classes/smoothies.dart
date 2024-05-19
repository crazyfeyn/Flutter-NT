class Smoothies {
  int index;
  String mainImage;
  String smallPro;
  String accountName;
  String highName;
  String desc;
  bool isFavourite;
  List type;

  Smoothies(
      {required this.index,
      required this.mainImage,
      required this.smallPro,
      required this.accountName,
      required this.highName,
      required this.desc,
      required this.isFavourite,
      required this.type});

  static final List<Smoothies> smoothiesDataList = [
    Smoothies(
        isFavourite: false,
        index: 0,
        mainImage: "assets/images/reco1.png",
        smallPro: "assets/images/smallPro1.png",
        accountName: "Melvin Robson",
        highName: "Melon Smoothie",
        desc:
            "In a few steps, you'll be able to make a delicious Melon Smoothie. It's easy and simple, enjoy!",
        type: ['Easy']),
    Smoothies(
        isFavourite: false,
        index: 1,
        mainImage: "assets/images/reco2.png",
        smallPro: "assets/images/smallPro2.png",
        accountName: "Maria",
        highName: "Strawberry Smoothie",
        desc:
            "In a few steps, you'll be able to make a delicious Melon Smoothie. It's easy and simple, enjoy!",
        type: ['Hard', 'Dairy']),
  ];
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/tappedDrama.dart';
import 'package:flutter_application/utils/extensions.dart';
import 'package:flutter_application/utils/tools.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

Widget topAppbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 310,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF1E1E28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            labelText: "Search",
            labelStyle: TextStyle(color: Colors.white, fontSize: 20),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
              size: 29,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
      InkWell(
        child: Ink(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color(0xFF28191E),
              borderRadius: BorderRadius.circular(17)),
          child: const Icon(
            Icons.keyboard_option_key,
            color: Colors.purple,
            size: 35,
          ),
        ),
      )
    ],
  );
}

Widget kDramas(String imagePath, String rating, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TappedDrama()));
    },
    child: Container(
        width: 180,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  rating,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        )),
  );
}

Widget scrollDramas(BuildContext context) {
  return Expanded(
      child: SingleChildScrollView(
    child: Column(
      children: [
        Wrap(
          spacing: 15,
          runSpacing: 25,
          children: [
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
            kDramas("assets/images/fox_image.png", "9.8", context),
          ],
        )
      ],
    ),
  ));
}

Widget kDramaName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 0.65.sw,
        child: const Text(
          "Nine tailed fox k-drama",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      SizedBox(
        width: 0.3.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bookmark,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.telegram,
                  color: Colors.white,
                  size: 35,
                ))
          ],
        ),
      )
    ],
  );
}

Widget mainFilmImage(BuildContext context) {
  return Container(
      width: double.infinity,
      height: 350,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main.jpeg"), fit: BoxFit.cover)),
      child: Column(
        children: [
          47.height(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                      color: Colors.white,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wifi_tethering, size: 35),
                        color: Colors.white),
                  ],
                )
              ],
            ),
          )
        ],
      ));
}

Widget starSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Icon(
        Icons.star_half,
        size: 25,
        color: Color(0xFF830FE2),
      ),
      const Text(
        "9.8",
        style: TextStyle(
            color: Color(0xFF830FE2),
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
      const Icon(
        Icons.arrow_forward_ios,
        size: 25,
        color: Color(0xFF830FE2),
      ),
      const Text(
        "2022",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF830FE2)),
            borderRadius: BorderRadius.circular(7)),
        child: const Text(
          "13+",
          style: TextStyle(
              color: Color(0xFF830FE2),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF830FE2)),
            borderRadius: BorderRadius.circular(7)),
        child: const Text(
          "South Korea",
          style: TextStyle(
              color: Color(0xFF830FE2),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF830FE2)),
            borderRadius: BorderRadius.circular(7)),
        child: const Text(
          "subscribe",
          style: TextStyle(
              color: Color(0xFF830FE2),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}

Widget playButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      InkWell(
        splashColor: Colors.orange,
        borderRadius: BorderRadius.circular(50),
        onTap: () {},
        child: Ink(
          width: 0.4.sw,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xFF830FE2),
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.play_circle_fill,
                color: Colors.white,
              ),
              10.width(),
              const Text(
                "Play",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        splashColor: Colors.orange,
        borderRadius: BorderRadius.circular(50),
        child: Ink(
          width: 0.4.sw,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: const Color(0xFF830FE2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.cloud_download,
                color: Color(0xFF830FE2),
              ),
              10.width(),
              const Text(
                "Download",
                style: TextStyle(
                    color: Color(0xFF830FE2),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )
            ],
          ),
        ),
      )
    ],
  );
}

Widget genreText() {
  return const Text(
    "Genre: Action, Drama, Romance, Fantastic, Fiction ...",
    style: TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
  );
}

Widget viewMoreText() {
  return Container(
    padding: const EdgeInsets.only(left: 8),
    child: RichText(
        text: const TextSpan(children: [
      TextSpan(
          text:
              "On November 18, 2020, the series took a one-week break from airing to ensure better production for the remaining four episodes, and aired a behind-the-scene special titled Tale of the Nine Tailed: A 600 Year... "),
      TextSpan(
          text: 'View more',
          style:
              TextStyle(color: Color(0xFF830FE2), fontWeight: FontWeight.w600))
    ])),
  );
}

Widget oneActorInfo() {
  return Container(
    padding: const EdgeInsets.all(5),
    height: 100,
    width: 170,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          height: 70,
          width: 70,
          child: Image.asset(
            "assets/images/actors1_image.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  "Cameron",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            5.height(),
            Text("Director",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade400))
          ],
        )
      ],
    ),
  );
}

Widget actorInfoScroll() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        oneActorInfo(),
        oneActorInfo(),
        oneActorInfo(),
        oneActorInfo(),
        oneActorInfo(),
      ],
    ),
  );
}

Widget chosenOrUnchosen1(bool chosen, String text, bool chosen1, bool chosen2,
    bool chosen3, chosenToggle, trailerToggleSwitch) {
  return chosen1
      ? InkWell(
          onTap: () {},
          child: Container(
            decoration: Tools.chosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.chosenStyle,
            ),
          ),
        )
      : InkWell(
          onTap: () {
            chosenToggle(true, false, false);
            trailerToggleSwitch(1);
          },
          child: Container(
            decoration: Tools.unchosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.unchosenStyle,
            ),
          ),
        );
}

Widget chosenOrUnchosen2(bool chosen, String text, bool chosen1, bool chosen2,
    bool chosen3, chosenToggle, trailerToggleSwitch) {
  return chosen2
      ? InkWell(
          onTap: () {},
          child: Container(
            decoration: Tools.chosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.chosenStyle,
            ),
          ),
        )
      : InkWell(
          onTap: () {
            chosenToggle(false, true, false);
            trailerToggleSwitch(2);
          },
          child: Container(
            decoration: Tools.unchosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.unchosenStyle,
            ),
          ),
        );
}

Widget chosenOrUnchosen3(bool chosen, String text, bool chosen1, bool chosen2,
    bool chosen3, chosenToggle, trailerToggleSwitch) {
  return chosen3
      ? InkWell(
          onTap: () {},
          child: Container(
            decoration: Tools.chosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.chosenStyle,
            ),
          ),
        )
      : InkWell(
          onTap: () {
            chosenToggle(false, false, true);
            trailerToggleSwitch(3);
          },
          child: Container(
            decoration: Tools.unchosenBorderStyle,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Text(
              text,
              style: Tools.unchosenStyle,
            ),
          ),
        );
}

Widget trailersSection(chosen1, chosen2, chosen3, Function chosenToggle,
    Function trailerToggleSwitch) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      chosenOrUnchosen1(chosen1, "Trailers", chosen1, chosen2, chosen3,
          chosenToggle, trailerToggleSwitch),
      chosenOrUnchosen2(chosen2, "More like this", chosen1, chosen2, chosen3,
          chosenToggle, trailerToggleSwitch),
      chosenOrUnchosen3(chosen3, "Comments", chosen1, chosen2, chosen3,
          chosenToggle, trailerToggleSwitch),
    ],
  );
}

Widget trailerOne(String trailerNumber) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        clipBehavior: Clip.hardEdge,
        width: 160,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: AssetImage("assets/images/hotel_image.png"),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Center(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.play_circle_fill,
                color: Colors.white,
                size: 40,
              ),
            ))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        height: 180,
        child: Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Trailer $trailerNumber: Hotel Del Luna",
              style: Tools.unchosenStyle
                  .copyWith(color: Colors.white, fontSize: 17),
            ),
            Text(
              "1m 45s",
              style: Tools.unchosenStyle.copyWith(fontSize: 17),
            ),

            //! --------------------------------------------------------------------- not working section ------------------------------------------------------------------------
            InkWell(
              onTap: () {},
              splashColor: Colors.orange,
              borderRadius: BorderRadius.circular(17),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF28191E),
                    borderRadius: BorderRadius.circular(17)),
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Update",
                  style: TextStyle(color: Color(0xFF830FE2), fontSize: 17),
                ),
              ),
            )
          ],
        )),
      )
    ],
  );
}

Widget trailerTapped() {
  return SizedBox(
    height: 400,
    child: SingleChildScrollView(
      child: Column(
        children: [
          trailerOne("3"),
          10.height(),
          trailerOne("2"),
          10.height(),
          trailerOne("1"),
          10.height()
        ],
      ),
    ),
  );
}

Widget moreLikeThisTapped(BuildContext context) {
  return Container(
    height: 400,
    child: scrollDramas(context),
  );
}

Widget commentOneFull() {
  return Container(
    margin: EdgeInsets.only(bottom: 10.sp),
    height: 220,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "24.6K comments",
              style: Tools.unchosenStyle.copyWith(color: Colors.white),
            ),
            const Text(
              "See all",
              style: Tools.chosenStyle,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 70,
              height: 70,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/commenter_image.jpeg"),
                      fit: BoxFit.cover)),
            ),
            Text(
              "Lee Dong Wook",
              style: Tools.unchosenStyle.copyWith(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
              iconSize: 35,
            )
          ],
        ),
        Text(
          loremIpsum(words: 16),
          style: Tools.unchosenStyle.copyWith(fontSize: 15),
        ),
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 27,
                  ),
                ),
                Text(
                  "567",
                  style: Tools.unchosenStyle.copyWith(fontSize: 17),
                )
              ],
            ),
            SizedBox(
              width: 20.sp,
            ),
            Text(
              "3 days ago",
              style: Tools.unchosenStyle.copyWith(fontSize: 17),
            )
          ],
        )
      ],
    ),
  );
}

Widget commentSection() {
  return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      child: Expanded(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          commentOneFull(),
          commentOneFull(),
          commentOneFull(),
          commentOneFull()
        ],
      ))));
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MainPageState());
}

class MainPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: bodyPage(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
                color: Colors.purple,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 50, color: Color(0xFF9478ff)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, size: 40, color: Colors.purple),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

Widget bodyPage() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Color(0xFF9478ff),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Column(
            children: [
              const SizedBox(height: 25),
              appBar(),
              shadow(),
              const SizedBox(height: 16),
              desc(),
              const SizedBox(height: 13),
              followerRow(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              forExpansion("About me", CupertinoIcons.profile_circled, lorem()),
              forExpansion("Work experience", Icons.luggage, workExp()),
              forExpansion(
                  "Education",
                  const IconData(0xe559, fontFamily: 'MaterialIcons'),
                  education()),
              forExpansion(
                  "Skill",
                  CupertinoIcons.snow,
                  skill("Leadership", "Teamwork", "Visionary",
                      "Target Oriented", "Consistent")),
              forExpansion("Language", Icons.book,
                  skill("English", "German", "Spanish", "Mandarin", "Italian")),
              forExpansion("Appreciation", Icons.format_list_bulleted_rounded,
                  education()),
              forExpansion("Resume", CupertinoIcons.person_add, resume()),
            ],
          ),
        ),
      ],
    ),
  );
}

appBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      IconButton(
        icon: const Icon(
          Icons.share_sharp,
          color: Colors.white,
          size: 35,
        ),
        onPressed: () {},
      ),
      const SizedBox(
        width: 5,
      ),
      IconButton(
        icon: const Icon(
          Icons.settings,
          color: Colors.white,
          size: 35,
        ),
        onPressed: () {},
      ),
    ],
  );
}

shadow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 121, 100, 202),
              offset: Offset.zero,
              blurRadius: 25,
              spreadRadius: 1)
        ]),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.circle),
          color: Colors.white,
          iconSize: 60,
        ),
      )
    ],
  );
}

desc() {
  return const Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Brandone Louis",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            "California USA",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          )
        ],
      )
    ],
  );
}

followers(String text1, String text2) {
  return Row(
    children: [
      Text(
        text1,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        text2,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
      )
    ],
  );
}

followerRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Row(
        children: [
          followers("120K", "Follower"),
          const SizedBox(
            width: 10,
          ),
          followers("23K", "Following"),
        ],
      ),
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(7))),
        child: TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  "Edit profile",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 17,
                )
              ],
            )),
      )
    ],
  );
}

about(iconka, yozuv) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(
            iconka,
            size: 35,
            color: const Color(0xFF9478ff),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            yozuv,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          )
        ],
      ),
      //!second
    ],
  );
}

Widget lorem() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: const Text(
      "Lorem Ipsum has been the industry's standard dummy text ever since",
      style: TextStyle(fontSize: 18),
    ),
  );
}

forExpansion(yozuv, iconka, inside) {
  return ExpansionTile(
    title: about(iconka, yozuv),
    trailing: const Icon(
      Icons.add_circle,
      size: 30,
      color: Color(0xFF9478ff),
    ),
    children: [inside],
  );
}

workExp() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Manager",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.edit, size: 35, color: Color(0xFF9478ff)))
          ],
        ),
        const Row(
          children: [Text("Amazon inc", style: TextStyle(fontSize: 17))],
        ),
        const Row(
          children: [
            Text(
              "Jan 2015 | Feb 2022 | 5 years",
              style: TextStyle(fontSize: 17),
            )
          ],
        )
      ],
    ),
  );
}

education() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Information Technology",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.edit, size: 35, color: Color(0xFF9478ff)))
          ],
        ),
        const Row(
          children: [
            Text("University of Oxford", style: TextStyle(fontSize: 17))
          ],
        ),
        const Row(
          children: [
            Text(
              "Sep 2010 | Feb 2021 | 8 years",
              style: TextStyle(fontSize: 17),
            )
          ],
        )
      ],
    ),
  );
}

skill(t1, t2, t3, t4, t5) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              box(t1),
              const SizedBox(
                width: 10,
              ),
              box(t2),
              const SizedBox(
                width: 10,
              ),
              box(t3),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              box(t4),
              const SizedBox(
                width: 10,
              ),
              box(t5),
              const SizedBox(
                width: 40,
              ),
              const Text("+5 more       ",
                  style: TextStyle(fontWeight: FontWeight.w500))
            ],
          )
        ],
      ));
}

Widget box(yozuv) {
  return Container(
    decoration: BoxDecoration(
        color: const Color(0xFFF5F4F6),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.all(10),
    child: Text(
      yozuv,
      style: const TextStyle(fontWeight: FontWeight.w500),
    ),
  );
}

resume() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.picture_as_pdf_outlined,
          color: Colors.red,
          size: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("CV UI/UXDesigner",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
            Row(
              children: [Text("867 kb | 4 feb 2022 at 11:30 am")],
            )
          ],
        ),
        Icon(
          Icons.delete,
          color: Colors.red,
          size: 45,
        )
      ],
    ),
  );
}

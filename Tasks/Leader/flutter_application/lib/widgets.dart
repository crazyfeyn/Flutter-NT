import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget me() {
  return Row(
    children: [
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              const Icon(
                Icons.play_circle,
                size: 35,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Listen",
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              const Icon(
                CupertinoIcons.share,
                size: 35,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Share",
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      )
    ],
  );
}

Widget Abdullow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            "assets/images/medium.png",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "Medium",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
          ),
        ],
      ),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.grey.shade400,
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(
              side: BorderSide(color: Colors.grey.shade400),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    ],
  );
}

Xusanboy() {
  return AppBar(
    leadingWidth: 150,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  "Open in app",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.arrow_outward_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            ))
      ],
    ),
    actions: [
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        onPressed: () {},
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          "Sign in",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
    ],
  );
}

abdullow2(bool isPhone) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Using Generative AI with Flutter",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: isPhone ? 22 : 50),
          ),
          Text(
            "Integrating Google's Gemini SDK into your Flutter App",
            style: TextStyle(
                fontSize: isPhone ? 14 : 30, color: Colors.grey.shade600),
          )
        ],
      )
    ],
  );
}

mardon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        clipBehavior: Clip.hardEdge,
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          "assets/images/img1.png",
          fit: BoxFit.fill,
        ),
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          Row(
            children: [
              const Text(
                "Deven Joshi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 3,
                width: 3,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Follow",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                "10 min read",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 3,
                width: 3,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "2 days ago",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

abdullowRes() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey.shade400))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/clapping.png",
                width: 30,
                height: 30,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              "102",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: Colors.grey.shade500,
                ))
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_add_outlined,
                color: Colors.grey.shade500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_outline,
                color: Colors.grey.shade500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.share,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget commentRow(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey.shade400))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/clapping.png",
                width: 30,
                height: 30,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              "102",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: Colors.grey.shade500,
                ))
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_add_outlined,
                color: Colors.grey.shade500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_outline,
                color: Colors.grey.shade500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.share,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

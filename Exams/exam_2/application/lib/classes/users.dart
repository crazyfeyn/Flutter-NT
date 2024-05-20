class Users {
  String name;
  String followers;
  String profileImage;
  bool isFollowed;

  Users(
      {required this.name,
      required this.followers,
      required this.profileImage,
      required this.isFollowed});

  static final List<Users> userList = [
    Users(
        name: "Ferhus Kim",
        followers: "3390",
        profileImage: "assets/images/userpro1.png",
        isFollowed: false),
    Users(
        name: "Robbie Miller",
        followers: "76K",
        profileImage: "assets/images/userpro2.png",
        isFollowed: false),
    Users(
        name: "Eric Arnold",
        followers: "998K",
        profileImage: "assets/images/userpro3.png",
        isFollowed: false),
    Users(
        name: "Lucia Jones",
        followers: "243K",
        profileImage: "assets/images/userpro4.png",
        isFollowed: false),
    Users(
        name: "Aynisa Jones",
        followers: "111K",
        profileImage: "assets/images/userpro5.png",
        isFollowed: false),
    Users(
        name: "Maxwell Kim",
        followers: "689K",
        profileImage: "assets/images/userpro6.png",
        isFollowed: false),
  ];
}

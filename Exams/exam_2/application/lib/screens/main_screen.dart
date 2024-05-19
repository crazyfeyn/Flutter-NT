import 'package:application/classes/initial_class.dart';
import 'package:application/functions/assistants.dart';
import 'package:application/screens/onboarding_1.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  bool _showInitial = true;
  Icon _checkedIcon = const Icon(Icons.check_box_outline_blank_outlined);
  final Icon _unCheckedIcon = const Icon(Icons.check_box_outlined);
  late TabController _tabController;
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  Icon curIcon = const Icon(Icons.visibility);
  Icon unvisibleIcon = const Icon(Icons.visibility_off);

  @override
  void initState() {
    super.initState();
    _loadInitial();
    _tabController = TabController(length: 1, vsync: this);
  }

  void _nextScreen() {
    _tabController.index++;
  }

  // void _preScreen() {
  //   _tabController.previousIndex;
  // }

  void _loadInitial() async {
    await Future.delayed(const Duration(seconds: 0));
    setState(() {
      _showInitial = false;
      _tabController = TabController(length: 2, vsync: this);
    });
  }

  void _toggleVisible() {
    setState(() {
      curIcon = curIcon == unvisibleIcon
          ? const Icon(Icons.visibility)
          : unvisibleIcon;
    });
  }

  void _toggleCheckedIcon() {
    setState(() {
      _checkedIcon = _checkedIcon == _unCheckedIcon
          ? const Icon(Icons.check_box_outline_blank_outlined)
          : _unCheckedIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showInitial
        ? InitialClass()
        : TabBarView(
            controller: _tabController,
            children: [loginScreenFunc(_nextScreen), Onboarding1()]);
  }

  loginScreenFunc(Function nextScreen) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(15),
                width: 1.sw,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.overlay),
                        image: const AssetImage(
                            "assets/images/initial_background.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome! 👋",
                          style: Tools.boldStyle,
                        ),
                        Text(
                          "Sign in to continue",
                          style: Tools.solidStyle,
                        )
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 25.sp, horizontal: 15.sp),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF212832),
                ),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.sp),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          validator: (value) {
                            if (value == null || !value.contains('@')) {
                              return 'Email must contain @!';
                            }
                            email = value;
                            return null;
                          },
                        ),
                        10.height(),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.sp)),
                            suffixIconColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _toggleVisible();
                                },
                                icon: curIcon),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          validator: (value) {
                            try {
                              if (value != null && value.length >= 4) {
                                password = value;
                                setState(() {});
                              } else {
                                throw Exception;
                              }
                            } catch (e) {
                              return 'password must contain at least 4 characters!';
                            }
                            return null;
                          },
                        ),
                        37.height(),
                        bigButton("Sign in", _nextScreen, formKey),
                        27.height(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _toggleCheckedIcon();
                              },
                              icon: _checkedIcon,
                              color: const Color(0xFF9372F1),
                            ),
                            Text(
                              "Remember me",
                              style: Tools.solidStyle.copyWith(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        30.height(),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Or login with",
                                    style: Tools.boldStyle
                                        .copyWith(fontSize: 16.sp),
                                  ),
                                  15.height(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Padding(
                                              padding: const EdgeInsets.all(7),
                                              child: SvgPicture.asset(
                                                "assets/icons/google.svg",
                                                width: 40.sp,
                                                height: 40.sp,
                                              ),
                                            )),
                                      ),
                                      15.width(),
                                      InkWell(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          child: SvgPicture.asset(
                                            "assets/icons/facebook.svg",
                                            width: 40.sp,
                                            height: 40.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Dont have an account?',
                                      style: Tools.solidStyle
                                          .copyWith(fontSize: 13.sp)),
                                  7.width(),
                                  InkWell(
                                    onTap: () {},
                                    child: Text('Sign up',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                const Color(0xFF9372F1),
                                            fontSize: 14.sp,
                                            color: const Color(0xFF9372F1),
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ))
        ],
      ),
    );
  }
}

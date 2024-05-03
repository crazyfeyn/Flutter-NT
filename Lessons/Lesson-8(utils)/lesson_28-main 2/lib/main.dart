import 'package:flutter/material.dart';
import 'package:lesson_28/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      themeMode: themeMode,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Working with Resources"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const SecondPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Bugungi Mavzu',
                  style: AppTextStyles.coloredHeadline
                      .copyWith(color: Colors.orange)),
              const Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              const SizedBox(height: 20),
              const Text('Bugungi Mavzu', style: AppTextStyles.coloredHeadline),
              const Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              const SizedBox(height: 20),
              const Text('Bugungi Mavzu', style: AppTextStyles.coloredHeadline),
              const Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              const SizedBox(height: 20),
              const Text('Bugungi Mavzu', style: AppTextStyles.coloredHeadline),
              const Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

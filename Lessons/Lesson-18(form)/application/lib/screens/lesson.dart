import 'package:flutter/material.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  final formKey = GlobalKey<FormState>();
  final String numbers = '123456789';
  int? age;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Age finder",
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("enter your age")),
                        validator: (value) {
                          try {
                            int.parse(value.toString());
                            setState(() {
                              age = int.parse(value.toString());
                              checked = !checked;
                            });
                          } catch (e) {
                            return 'please enter corrected digits';
                          }
                        },
                      ),
                      if (checked)
                        Text(
                            "you're ${2024 - num.parse(age.toString())} years old"),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                          } else {
                            setState(() {
                              checked = !checked;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        child: checked ? Text("Cencel") : Text("Send"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

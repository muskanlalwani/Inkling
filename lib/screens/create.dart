import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/constants/colors.dart';
import 'package:note_app/models/note.dart';
import 'package:note_app/screens/edit.dart';
import 'package:note_app/constants/titles.dart';

class TitleScreen extends StatefulWidget {
  final Note? note;
  const TitleScreen({super.key, this.note});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }
    super.initState();
  }

  getRandomTitle() {
    Random random = Random();
    return backgroundColors[random.nextInt(titlesList.length)];
  }
  // void refreshOptions() {
  //   // Get a new random title.
  //   String newTitle = getRandomTitle();

  //   // Set the TextField's hint text to the new title.
  //   setState(() {
  //     hintText = newTitle;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: const EdgeInsets.all(0),
                    icon: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800.withOpacity(.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                TextField(
                  controller: _contentController,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: getRandomTitle(),
                    hintStyle: TextStyle(color: Colors.grey),
                    // suffixIcon: IconButton(
                    //   icon: Icon(Icons.refresh),
                    //   // onPressed: () {
                    //   //   refreshOptions();
                    //   //   ;
                    //   // },
                    // )
                  ),
                ),
                TextField(
                  controller: _contentController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          'Create the content related to the title hinted',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
              context, [_titleController.text, _contentController.text]);
        },
        elevation: 10,
        backgroundColor: Colors.grey.shade800,
        child: const Icon(Icons.save),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[300],
      content: Container(
        height: 140,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //task
            TextField(
              controller: controller,
              cursorColor: Color.fromARGB(255, 13, 65, 108),
              decoration: InputDecoration(
                hintText: "Add a new task",
              ),
            ),

            const SizedBox(width: 4),
            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //cancel
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),

                const SizedBox(width: 10),
                //save
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

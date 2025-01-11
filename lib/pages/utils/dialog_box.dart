// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:to_do_app/pages/utils/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancle;
  DialogBox({
    super.key,
    required this.controller,
    required this.onsave,
    required this.oncancle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new Task',
              ),
            ),
            //Buttons -> save + cancle
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButtons(
                  text: 'save',
                  onPressed: onsave,
                ),
                const SizedBox(
                  width: 8,
                ),
                //cancle button
                MyButtons(
                  text: 'cancle',
                  onPressed: oncancle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

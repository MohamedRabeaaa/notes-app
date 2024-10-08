import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';

class SaveAlertDialog extends StatefulWidget {
  final String text1;
  final String text2;
  // final GlobalKey<FormState> formKey;
  // final Function setAutovalidateMode;
  final String? title;
  final String? content;
  final void Function() onSavePressed;

  const SaveAlertDialog({
    super.key,
    required this.text1,
    required this.text2,
    // required this.formKey,
    // required this.setAutovalidateMode,
    this.title,
    this.content,
    required this.onSavePressed,
  });

  @override
  State<SaveAlertDialog> createState() => _SaveAlertDialogState();
}

class _SaveAlertDialogState extends State<SaveAlertDialog> {
  @override
  Widget build(BuildContext context) {
    double dialogWidth = MediaQuery.of(context).size.width - 25;

    return Dialog(
      child: Container(
        width: dialogWidth,
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: 10),
          const Icon(Icons.info_outline),
          const SizedBox(height: 20),
          const Text('Save changes?'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomElevatedButton(
                text: widget.text1,
                backGroundColor: const Color(0xffFF0000),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 15),
              CustomElevatedButton(
                text: widget.text2,
                backGroundColor: const Color(0xff30BE71),
                onPressed: widget.onSavePressed,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

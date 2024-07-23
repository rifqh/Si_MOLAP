import 'package:flutter/cupertino.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;

  const CustomSearchField({Key? key, required this.controller});

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());

    return CupertinoSearchTextField(
      borderRadius: BorderRadius.circular(10),
      controller: controller,
    );
  }
}

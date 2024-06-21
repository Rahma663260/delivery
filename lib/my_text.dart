import 'package:flutter/material.dart';

class MyTextForm extends StatefulWidget {
  final TextInputType textInputTypeee;
  final bool isPassword;
  final String hinttexttt;

  const MyTextForm({
    super.key,
    required this.textInputTypeee,
    required this.isPassword,
    required this.hinttexttt,
  });

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputTypeee,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hinttexttt,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}

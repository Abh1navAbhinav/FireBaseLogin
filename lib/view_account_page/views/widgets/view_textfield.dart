import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ViewTextField extends StatelessWidget {
  ViewTextField({
    Key? key,
    required this.hint,
    required this.image,
    required this.controller,
  }) : super(key: key);
  String hint;
  String image;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 15,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
          hintStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.black,
          ),
          fillColor: const Color.fromARGB(255, 222, 224, 247),
          filled: true,
          icon: Image(
            image: AssetImage(
              image,
            ),
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}

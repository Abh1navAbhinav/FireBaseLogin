import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/signup_page/controllers/signup_controler.dart';

// ignore: must_be_immutable
class TextFields extends GetView<SignupController> {
  TextFields({
    Key? key,
    required this.hint,
    required this.image,
    required this.controllers,
    required this.vaidator,
  }) : super(key: key);
  String hint;
  String image;
  String vaidator;
  TextEditingController controllers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 15,
      ),
      child: TextFormField(
        controller: controllers,
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
        validator: (value) {
          if (value == null || value.isEmpty) {
            return vaidator;
          } else {
            return null;
          }
        },
      ),
    );
  }
}

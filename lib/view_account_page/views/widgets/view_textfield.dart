import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/view_account_page/controllers/viewcontroller.dart';

// ignore: must_be_immutable
class ViewTextField extends GetView<Viewcontroller> {
  ViewTextField({
    Key? key,
    required this.hint,
    required this.image,
    required this.controllers,
  }) : super(key: key);
  String hint;
  String image;
  TextEditingController controllers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 15,
      ),
      child: Obx(
        () => TextFormField(
          enabled: controller.isEditing.value,
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
        ),
      ),
    );
  }
}

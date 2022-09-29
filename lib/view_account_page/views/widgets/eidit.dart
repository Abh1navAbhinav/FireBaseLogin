import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/view_account_page/controllers/viewcontroller.dart';

class EditButton extends GetView<Viewcontroller> {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          icon: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
          label: Text(
            "Log Out",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Obx(
          () => Visibility(
            visible: !controller.isEditing.value,
            child: GestureDetector(
              onTap: () {
                controller.isEditing.value = true;
              },
              child: const Image(
                image: AssetImage(
                  'assets/icons/Ellipse 9.png',
                ),
                height: 54,
                width: 56,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

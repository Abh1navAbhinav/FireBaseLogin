import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/auth/model.dart';
import 'package:sample_fire_base/view_account_page/controllers/viewcontroller.dart';

class UpdateButton extends GetView<Viewcontroller> {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.isEditing.value,
        child: ElevatedButton(
          onPressed: () async {
            final model = ModelClass(
              age: controller.ageController.text.trim(),
              domain: controller.domainController.text.trim(),
              mob: controller.mobileController.text.trim(),
              name: controller.usernameController.text.trim(),
            );
            await controller.updateToDatabase(model);
            controller.isEditing.value = false;
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 10,
            ),
            child: Text(
              "Update",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

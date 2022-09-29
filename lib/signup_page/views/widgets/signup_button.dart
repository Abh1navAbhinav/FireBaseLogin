import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/auth/model.dart';
import 'package:sample_fire_base/signup_page/controllers/signup_controler.dart';

class SignUpButton extends GetView<SignupController> {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Get.to(
        //   const ViewAccount(),
        // );

        final model = ModelClass(
          mob: controller.mobileController.text.trim(),
          name: controller.usernameController.text.trim(),
        );
        await controller.signup(
          controller.emailController.text.trim(),
          controller.passwordController.text.trim(),
        );
        await controller.addToDatabase(model);
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
          horizontal: 80,
          vertical: 10,
        ),
        child: Text(
          "Sign Up",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

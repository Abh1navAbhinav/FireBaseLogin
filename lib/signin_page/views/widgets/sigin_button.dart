import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/signin_page/controllers/signin_controller.dart';

class SignInButton extends GetView<SigninController> {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (controller.formkey.currentState!.validate()) {
          await controller.signIn();
          controller.emailController.clear();
          controller.passwordController.clear();
        }

        // Get.off(const ViewAccount());
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
          horizontal: 95,
          vertical: 10,
        ),
        child: Text(
          "Sign In",
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

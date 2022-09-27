import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/view_account_page/views/view_account.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.off(
          const ViewAccount(),
        );
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/view_account_page/views/view_account.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.off(const ViewAccount());
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/signin_page/views/signin.dart';
import 'package:sample_fire_base/signup_page/views/widgets/profile_image.dart';
import 'package:sample_fire_base/signup_page/views/widgets/signup_button.dart';
import 'package:sample_fire_base/signup_page/views/widgets/textfields.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Center(child: ProfileImage()),
              const SizedBox(height: 15),
              TextFields(
                hint: 'Username',
                image: 'assets/icons/user.png',
              ),
              TextFields(
                hint: 'Mobile number',
                image: "assets/icons/telephone.png",
              ),
              TextFields(
                hint: 'E-Mail',
                image: "assets/icons/email.png",
              ),
              TextFields(
                hint: 'Password',
                image: "assets/icons/padlock.png",
              ),
              /*  TextFields(
                hint: 'Confirm password',
                image: "image",
              ), */
              const SizedBox(
                height: 50,
              ),
              const SignUpButton(),
              TextButton(
                onPressed: () {
                  Get.to(
                    () =>   SigninPage(),
                  );
                },
                child: Text(
                  'Sign In',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

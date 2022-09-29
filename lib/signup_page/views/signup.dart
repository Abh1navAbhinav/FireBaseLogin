import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/signin_page/views/signin.dart';
import 'package:sample_fire_base/signup_page/controllers/signup_controler.dart';
import 'package:sample_fire_base/signup_page/views/widgets/signup_button.dart';
import 'package:sample_fire_base/signup_page/views/widgets/textfields.dart';

class SignUp extends GetView<SignupController> {
   SignUp({super.key});
  final signupController = Get.put(SignupController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              // const Center(child: ProfileImage()),
              const SizedBox(height: 15),
              TextFields(
                controller: controller.usernameController,
                hint: 'Username',
                image: 'assets/icons/user.png',
              ),
              TextFields(
                controller: controller.mobileController,
                hint: 'Mobile number',
                image: "assets/icons/telephone.png",
              ),
               TextFields(
                controller: controller.ageController,
                hint: 'Age',
                image: 'assets/icons/age.png',
              ),
               TextFields(
                controller: controller.domainController,
                hint: 'Domain',
                image: 'assets/icons/job.png',
              ),
              TextFields(
                controller: controller.emailController,
                hint: 'E-Mail',
                image: "assets/icons/email.png",
              ),
              TextFields(
                controller: controller.passwordController,
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
                    () => SigninPage(),
                  );
                  controller.clearAllController();
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_fire_base/signin_page/controllers/signin_controller.dart';
import 'package:sample_fire_base/signin_page/views/widgets/sigin_button.dart';
import 'package:sample_fire_base/signup_page/views/signup.dart';

class SigninPage extends GetView<SigninController> {
  SigninPage({super.key});

  final signinController = Get.put(SigninController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 374,
              width: double.maxFinite,
              child: Image.asset(
                "assets/images/274.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                child: Form(
                  key: controller.formkey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.emailController,
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          icon: const SizedBox(),
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'E-mail is empty';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const Divider(
                        height: 0,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Obx(
                        () => TextFormField(
                          // obscuringCharacter: "X",
                          controller: controller.passwordController,
                          autocorrect: true,
                
                          decoration: InputDecoration(
                            hintText: 'Password',
                            icon: const SizedBox(),
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isObscure.value =
                                    !controller.isObscure.value;
                              },
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: !controller.isObscure.value
                                    ? Colors.grey
                                    : Colors.black,
                              ),
                            ),
                          ),
                          
                           validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'password is empty';
                            } else {
                              return null;
                            }
                          },
                          obscureText: !controller.isObscure.value,
                        ),
                      ),
                      
                      const Divider(
                        height: 0,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const SignInButton(),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(
                            () => SignUp(),
                          );
                        },
                        child: Text(
                          'Create new account',
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
            ),
          ],
        ),
      ),
    );
  }
}

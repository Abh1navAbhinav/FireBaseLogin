import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var isObscure = false.obs;


  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }



  // life cycle methods
  
  @override
  void dispose() {
   emailController.dispose();
   passwordController.dispose();
    super.dispose();
  }
  
}

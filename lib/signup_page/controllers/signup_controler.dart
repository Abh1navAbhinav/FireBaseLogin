import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_fire_base/auth/model.dart';

class SignupController extends GetxController {
  final usernameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final domainController = TextEditingController();
  final ageController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      return Get.snackbar('', '',
          messageText: Text(e.toString()), snackPosition: SnackPosition.BOTTOM);
    }
  }

  addToDatabase(ModelClass model) async {
    try {
      final CollectionReference users = FirebaseFirestore.instance
          .collection(FirebaseAuth.instance.currentUser!.email.toString());
      final generatedId = await users.add(model.toJson());
      model.id = generatedId.id;
      await users.doc(generatedId.id).update(model.toJson());
      Get.back();
    } catch (e) {
      return Get.snackbar('', '',
          messageText: Text(e.toString()), snackPosition: SnackPosition.BOTTOM);
    }
  }

  clearAllController() {
    usernameController.clear();
    mobileController.clear();
    emailController.clear();
    passwordController.clear();
    domainController.clear();
    ageController.clear();
  }

  // life cycle methods

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    mobileController.dispose();
    usernameController.dispose();
    domainController.dispose();
    ageController.dispose();
    super.dispose();
  }
}

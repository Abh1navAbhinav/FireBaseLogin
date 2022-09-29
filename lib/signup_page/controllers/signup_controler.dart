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



  signup(email, password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  addToDatabase(ModelClass model) async {
    final CollectionReference users = FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email.toString());
    final generatedId = await users.add(model.toJson());
    model.id = generatedId.id;
    await users.doc(generatedId.id).update(model.toJson());
    Get.back();
  }
}

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_fire_base/auth/model.dart';

class Viewcontroller extends GetxController {
  var isEditing = false.obs;
  final usernameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final domainController = TextEditingController();
  final ageController = TextEditingController();
  late String id;

  updateToDatabase(ModelClass model) async {
    try {
      final CollectionReference users = FirebaseFirestore.instance
          .collection(FirebaseAuth.instance.currentUser!.email.toString());
      final id = model.id;
      log(id.toString());
      await users.doc(id).update(model.toJson());
    } catch (e) {
      return Get.snackbar('', '',
          messageText: Text(e.toString()), snackPosition: SnackPosition.BOTTOM);
    }
  }

  assignToController(List<ModelClass> newList) {
    id = newList[0].id.toString();
    mobileController.text = newList.first.mob.toString();
    usernameController.text = newList.first.name.toString();
    ageController.text = newList.first.age.toString();
    domainController.text = newList.first.domain.toString();
  }
}

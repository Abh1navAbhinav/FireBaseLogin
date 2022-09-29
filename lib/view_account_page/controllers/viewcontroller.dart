import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sample_fire_base/auth/model.dart';

class Viewcontroller extends GetxController {


  updateToDatabase(ModelClass model) async {
    final CollectionReference users = FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email.toString());
    final id = model.id;
    await users.doc(id).update(model.toJson());
  }
}

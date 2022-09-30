import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_fire_base/auth/model.dart';
import 'package:sample_fire_base/view_account_page/controllers/viewcontroller.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/eidit.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/update_button.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/view_textfield.dart';

class ViewAccount extends GetView<Viewcontroller> {
  ViewAccount({super.key});
  final viewcontroller = Get.put(Viewcontroller());
  final CollectionReference user = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email.toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: StreamBuilder(
              stream: user.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  final newList = streamSnapshot.data!.docs.map((e) {
                    return ModelClass.fromjson(
                        e.data() as Map<String, dynamic>);
                  }).toList();
                  controller.assignToController(newList);
                }
                return Container(
                  width: 360,
                  height: 800,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/274.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    color: const Color.fromARGB(103, 0, 0, 0),
                    child: Column(
                      children: [
                        const EditButton(),
                        const SizedBox(height: 40),
                        // const Profile(),
                        const SizedBox(height: 120),
                        ViewTextField(
                          controllers: controller.usernameController,
                          hint: 'Username',
                          image: 'assets/icons/user.png',
                        ),
                        ViewTextField(
                          controllers: controller.mobileController,
                          hint: 'Mobile number',
                          image: "assets/icons/telephone.png",
                        ),
                        ViewTextField(
                          controllers: controller.ageController,
                          hint: 'Age',
                          image: 'assets/icons/age.png',
                        ),
                        ViewTextField(
                          controllers: controller.domainController,
                          hint: 'Domain',
                          image: 'assets/icons/job.png',
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const UpdateButton(),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

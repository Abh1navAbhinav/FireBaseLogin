import 'package:flutter/material.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/eidit.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/profile.dart';
import 'package:sample_fire_base/view_account_page/views/widgets/view_textfield.dart';

class ViewAccount extends StatelessWidget {
  const ViewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const EditButton(),
              const SizedBox(height: 40),
              const Profile(),
              const SizedBox(height: 15),
              ViewTextField(
                hint: 'Username',
                image: 'assets/icons/user.png',
              ),
              ViewTextField(
                hint: 'Mobile number',
                image: "assets/icons/telephone.png",
              ),
              ViewTextField(
                hint: 'E-Mail',
                image: "assets/icons/email.png",
              ),
              ViewTextField(
                hint: 'Password',
                image: "assets/icons/padlock.png",
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

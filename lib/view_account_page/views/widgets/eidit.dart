import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          icon: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
          label: Text(
            "Log Out",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Image(
            image: AssetImage(
              'assets/icons/Ellipse 9.png',
            ),
            height: 54,
            width: 56,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: const [
          CircleAvatar(
            radius: 95,
            backgroundColor: Colors.black,
          ),
          Positioned(
            right: 5,
            top: 5,
            left: 5,
            bottom: 5,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 253, 166, 168),
              backgroundImage: AssetImage('assets/images/camera.png'),
            ),
          ),
        ],
      ),
    );
  }
}

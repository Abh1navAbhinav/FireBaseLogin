import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
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

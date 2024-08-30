import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final bool isAvatar;

  const AvatarWidget({
    super.key,
    this.isAvatar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 250,
          height: 300,
          child: Image.asset(
            isAvatar
                ? 'assets/images/yellow_ellipse.png'
                : 'assets/images/blue_ellipse.png',
          ),
        ),
        Image.asset(
          isAvatar
              ? 'assets/images/logo_avatar.png'
              : 'assets/images/user_avatar.png',
        ),
      ],
    );
  }
}

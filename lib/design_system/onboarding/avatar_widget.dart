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
        Image.asset(
          isAvatar
              ? 'assets/images/blue_ellipse.png'
              : 'assets/images/yellow_ellipse.png',
          width: 64,
          height: 64,
        ),
        Image.asset(
          isAvatar
              ? 'assets/images/user_avatar.png'
              : 'assets/images/logo_avatar.png',
          width: 64,
          height: 64,
        ),
      ],
    );
  }
}

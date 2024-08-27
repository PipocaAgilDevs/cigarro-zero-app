import 'package:flutter/material.dart';

import '../../app_colors.dart';

class AvatarWidget extends StatelessWidget {
  final bool isAvatar;

  const AvatarWidget({
    super.key,
    this.isAvatar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.secondary150.withOpacity(0.5),
                Colors.transparent,
              ],
              radius: 20,
              focal: Alignment.center,
            ),
            color: isAvatar ? AppColors.secondary200 : AppColors.primary200,
          ),
        ),
        // Container(
        //   width: 64,
        //   height: 64,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     border: Border.all(
        //       color: isAvatar ? AppColors.secondary200 : AppColors.primary200,
        //       width: 1,
        //     ),
        //   ),
        //   child: CircleAvatar(
        //     radius: 40,
        //     backgroundColor: AppColors.whiteShade50,
        //     child: Image.asset(
        //       'assets/images/lungs_avatar.png',
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

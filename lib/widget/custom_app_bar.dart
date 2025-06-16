import 'package:flutter/material.dart';
import '../core/utils/app_text_styles.dart';
import '../core/utils/asset_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Image.asset(AssetPath.appLogo,height: 300,width: 200,),
      title: Text(title!, style: AppTextStyle.regular24),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Image.asset(AssetPath.adminUser),
        ),
      ],
    );
  }
}

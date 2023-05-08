import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu, color: Colors.black),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
        ),
      ],
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

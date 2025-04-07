import 'package:flutter/material.dart';

class MashinAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MashinAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.of(context).maybePop();
        },
      ),
      title: const Text('마교 컬렉션 List', style: TextStyle(color: Colors.black)),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.more_vert, color: Colors.black),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

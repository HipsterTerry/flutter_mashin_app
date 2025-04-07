import 'package:flutter/material.dart';

class MashinBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const MashinBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color(0xFF4A4459),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '장바구니'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: '상품'),
      ],
    );
  }
}

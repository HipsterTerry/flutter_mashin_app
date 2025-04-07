import 'package:flutter/material.dart';
import 'pages/mashin_shop_list_page.dart';

void main() {
  runApp(const MashinApp());
}

class MashinApp extends StatelessWidget {
  const MashinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mashin Shop App',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const MashinShopListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

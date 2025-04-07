import 'package:flutter/material.dart';
import '../models/mashin_shop_item.dart';
import '../widgets/mashin_app_bar.dart';
import '../widgets/mashin_filter_buttons.dart';
import '../widgets/mashin_shop_item_card.dart';
import '../widgets/mashin_bottom_nav_bar.dart';

class MashinShopListPage extends StatefulWidget {
  const MashinShopListPage({super.key});

  @override
  State<MashinShopListPage> createState() => _MashinShopListPageState();
}

class _MashinShopListPageState extends State<MashinShopListPage> {
  String selectedFilter = '마신주교';

  final List<MashinShopItem> allItems = [
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_1.jpg',
      name: '이지우 마왕17',
      price: '100,000,000',
      type: '마신주교',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_2.jpg',
      name: '마도사 환웅',
      price: '80,000,000',
      type: '신도',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_3.jpg',
      name: '강림 장로',
      price: '50,000,000',
      type: '장로회',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_4.jpg',
      name: '하늘의 무녀',
      price: '70,000,000',
      type: '상급무사',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_5.jpg',
      name: '도해 무사',
      price: '60,000,000',
      type: '중급무사',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_6.jpg',
      name: '백월 무사',
      price: '40,000,000',
      type: '하급무사',
    ),
    MashinShopItem(
      imageAssetPath: 'assets/image/mashin_7.jpg',
      name: '혈마 첩자',
      price: '90,000,000',
      type: '혈마첩자',
    ),
  ];

  List<String> filters = ['신도', '마신주교', '장로회', '상급무사', '중급무사', '하급무사', '혈마첩자'];

  int _selectedNavIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<MashinShopItem> filteredItems =
        allItems.where((item) => item.type == selectedFilter).toList();

    return Scaffold(
      appBar: const MashinAppBar(),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MashinFilterButtons(
            filters: filters,
            selectedFilter: selectedFilter,
            onFilterSelected: (filter) {
              setState(() {
                selectedFilter = filter;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text('리스트')),
                const SizedBox(width: 8),
                OutlinedButton(onPressed: () {}, child: const Text('주문내역')),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return MashinShopItemCard(item: filteredItems[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: MashinBottomNavBar(
        currentIndex: _selectedNavIndex,
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
      ),
    );
  }
}

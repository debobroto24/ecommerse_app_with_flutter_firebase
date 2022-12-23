import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/view/product/sport_product_list.dart';
import 'package:shoesmela/widgets/custom_appbar.dart';
import 'package:shoesmela/widgets/small_text.dart';

class Store extends StatefulWidget {
  Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // TabController _tabController = TabController(length: 3, vsync: this);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: double.maxFinite,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              tabs: [
                Text("Shop", style: TextStyle(color: Colors.black)),
                Text("Toy", style: TextStyle(color: Colors.black)),
                Text("Tech", style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SportProductList(),
                Text("Toy", style: TextStyle(color: Colors.black)),
                Text("Tech", style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

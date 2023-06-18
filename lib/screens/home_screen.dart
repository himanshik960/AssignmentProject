import 'package:flutter/material.dart';
import 'package:himanshiproject/screens/popular.dart';
import 'package:himanshiproject/screens/recent.dart';
import 'package:provider/provider.dart';

import 'all.dart';
import '../model/tab_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    final tabProvider = Provider.of<TabModel>(context, listen: false);
    tabProvider.tabController1 = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabModel>(context);
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TabBar(
                    controller: tabProvider.tabController1,
                    indicator: BoxDecoration(
                      color: Color(0xFFF48FB1),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        text: 'Popular',
                      ),
                      Tab(
                        text: 'Recent',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabProvider.tabController1,
                    children: [
                      AllTab(),
                      PopularTab(),
                      RecentTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

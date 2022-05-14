import 'package:flutter/material.dart';
import 'package:whats_app_clone/theme/dark_mode.dart';
import 'package:whats_app_clone/widgets/mobile/chat_list.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: const Text(
              'WhatsApp',
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            bottom: TabBar(
              onTap: (index) {
               setState(() {
                 _currentIndex = index;
               });
              },
              tabs: const [
                Tab(
                  text: 'Chat',
                ),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
              indicatorColor: Colors.teal,
              indicatorWeight: 4,
              labelStyle: tabsTextStyle,
            ),
          ),
          body: const TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ChatList(),
              ),
              Text('Status'),
              Text('Calls'),
            ],
          ),
          floatingActionButton: _currentIndex == 0
              ? FloatingActionButton(
                backgroundColor: Colors.teal,
                  onPressed: () {},
                  child: const Icon(Icons.chat, color: Colors.white),
                )
              : null),
    );
  }
}

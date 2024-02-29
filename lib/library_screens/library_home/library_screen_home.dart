import 'package:flutter/material.dart';
import 'package:majlis_library/library_screens/library_account/library_screen_account.dart';
import 'package:majlis_library/library_screens/library_sub_home/library_screen_sub.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MAJLIS LIBRARY'),
          backgroundColor: Colors.blue[300],
          centerTitle: true,
        ),
        // bottomNavigationBar: const LibraryManagerBottomNavigation(),
        // body: SafeArea(
        //     child: ValueListenableBuilder(
        //         valueListenable: selectedIndexNotifier,
        //         builder: (BuildContext ctx, int UpdatedIndex, Widget? _) {
        //           return _pages[UpdatedIndex];
        //         })),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
              )
            ]),
            Expanded(
              child: TabBarView(children: [
                ScreenSubHome(),
                ScreenAcconut(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

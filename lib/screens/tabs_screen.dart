import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/providers/navigation_bar_index.dart';
import 'package:github_repo_app/screens/Image_grid_screen.dart';
import 'package:github_repo_app/screens/repo_details_screen.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget bodyContent = const RepoDetailsScreen();
    if (ref.watch(bottommNavigationBarIndex) == 1) {
      bodyContent = const ImageGridScreen();
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'RepoScreen',
      //     style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      // ),
      body: bodyContent,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(bottommNavigationBarIndex),
        onTap: (value) {
          ref.read(bottommNavigationBarIndex.notifier).set(value);
        },
        backgroundColor: Colors.black,
        elevation: 0,
        iconSize: 24,
        // selectedItemColor: Colors.white,
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.white,
              Icons.folder,
            ),
            label: 'Repos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.filter,
              color: Colors.white,
            ),
            label: 'Images',
          ),
        ],
      ),
      // filter_sharp

      // clipBehavior: Clip.antiAliasWithSaveLayer,
      // clipper: CustomClipper(reclip: Lis),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ClipRect(
      //     clipBehavior: Clip.hardEdge,
      //     child: BottomNavigationBar(
      //       backgroundColor: const Color.fromARGB(236, 0, 0, 0),
      //       // landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      //       // elevation: 4,
      //       iconSize: 24,
      //       items: const [
      //         BottomNavigationBarItem(
      //             icon: Icon(
      //               color: Colors.white,
      //               Icons.folder,
      //             ),
      //             label: 'Repos'),
      //         BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.filter,
      //             color: Colors.white,
      //           ),
      //           label: 'Images',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

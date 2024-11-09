import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

// final kColorScheme = themedata.colorScheme;

final List<TabItem> tabItems = List.of([
  TabItem(
    Icons.folder,
    "Repos",
    Colors.black87,
    labelStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  ),
  TabItem(
    Icons.image,
    "Images",
    Colors.black87,
    labelStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  ),
]);

class RepoDetailsScreen extends StatelessWidget {
  const RepoDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'RepoScreen',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        ),
        body: const Center(
          child: Text('I am the repo screen'),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
            color: Colors.black87,
            borderRadius: BorderRadius.circular(24),
            // Optional: add shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  iconSize: 24,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          color: Colors.white,
                          Icons.folder,
                        ),
                        label: 'Repos'),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.filter,
                        color: Colors.white,
                      ),
                      label: 'Images',
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
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

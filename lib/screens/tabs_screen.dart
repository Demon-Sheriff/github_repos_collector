import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/models/image.dart';
import 'package:github_repo_app/providers/gist_provider.dart';
import 'package:github_repo_app/providers/navigation_bar_index.dart';
import 'package:github_repo_app/screens/image_grid_screen.dart';
import 'package:github_repo_app/screens/repo_details_screen.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget bodyContent =
        RepoDetailsScreen(gistService: ref.watch(gistServiceProvider));
    if (ref.watch(bottommNavigationBarIndex) == 1) {
      bodyContent = GalleryScreen(
        images: <ImageItem>[
          ImageItem(
            id: "1",
            imageUrl: "ui",
            title: "io",
          ),
          ImageItem(
            id: '2',
            imageUrl: 'https://picsum.photos/200/301',
            title: 'City Life',
            description: 'Urban photography',
          ),
          ImageItem(
            id: '3',
            imageUrl: 'https://picsum.photos/200/300',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '4',
            imageUrl: 'https://picsum.photos/200/302',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '5',
            imageUrl: 'https://picsum.photos/200/303',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '6',
            imageUrl: 'https://picsum.photos/200/304',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '7',
            imageUrl: 'https://picsum.photos/200/305',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '8',
            imageUrl: 'https://picsum.photos/200/306',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '9',
            imageUrl: 'https://picsum.photos/200/307',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '10',
            imageUrl: 'https://picsum.photos/200/308',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '11',
            imageUrl: 'https://picsum.photos/200/309',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '12',
            imageUrl: 'https://picsum.photos/200/310',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '13',
            imageUrl: 'https://picsum.photos/200/311',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '14',
            imageUrl: 'https://picsum.photos/200/312',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '15',
            imageUrl: 'https://picsum.photos/200/313',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '16',
            imageUrl: 'https://picsum.photos/200/314',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '17',
            imageUrl: 'https://picsum.photos/200/315',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '18',
            imageUrl: 'https://picsum.photos/200/316',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '19',
            imageUrl: 'https://picsum.photos/200/317',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '20',
            imageUrl: 'https://picsum.photos/200/318',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '21',
            imageUrl: 'https://picsum.photos/200/319',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
          ImageItem(
            id: '22',
            imageUrl: 'https://picsum.photos/200/320',
            title: 'Nature Scene',
            description: 'Beautiful landscape photography',
          ),
        ],
      );
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
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.80),
        selectedFontSize: 14,
        unselectedFontSize: 14,
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

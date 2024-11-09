import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class RepoDetailsScreen extends ConsumerWidget {
  const RepoDetailsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Repositories',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text(
          'data',
        ),
      ),
    );
  }
}

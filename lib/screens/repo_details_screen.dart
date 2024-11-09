import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/models/repository.dart';
import 'package:github_repo_app/widgets/repo_card.dart';

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
    List<Repository> repoList = [
      Repository(
        title: 'Demon-Sheriff',
        description:
            'I am doing something, I am gonna finish this project. No matter what !, I am done running away from devlopment, Okay will this one overflow because if not I will try my best to make it overflow ! Okay still did not overlfow let\'s do it again',
        imageURL:
            'https://i.pinimg.com/originals/4c/cf/da/4ccfdaf6092dc341376e6fdb8130d09d.jpg',
        createdAt: '10 Nov 2024',
        lastUpdated: '10 Nov 2024',
        comments: 4,
        rawURL: 'rawURL',
        size: 4,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Repositories',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: repoList.length,
        itemBuilder: (context, index) {
          return RepoCard(
            repository: repoList[index],
          );
        },
      ),
    );
  }
}

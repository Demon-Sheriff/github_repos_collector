import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/models/repository.dart';

final repositoryListProvider = StateNotifierProvider<RepositoryListNotifier, List<Gist>>((ref) {
  return RepositoryListNotifier();
});

class RepositoryListNotifier extends StateNotifier<List<Gist>>{

  RepositoryListNotifier() : super([]);

  void set
}
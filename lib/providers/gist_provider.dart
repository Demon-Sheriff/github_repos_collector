import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/data/github_api_data.dart';

final gistServiceProvider = Provider<GistService>((ref) => GistService());

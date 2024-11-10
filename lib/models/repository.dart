import 'package:flutter/services.dart';

// gist_file.dart
class GistFile {
  final String filename;
  final String type;
  final String language;
  final String rawUrl;
  final int size;

  GistFile({
    required this.filename,
    required this.type,
    required this.language,
    required this.rawUrl,
    required this.size,
  });

  factory GistFile.fromJson(Map<String, dynamic> json) {
    return GistFile(
      filename: json['filename'] ?? '',
      type: json['type'] ?? '',
      language: json['language'] ?? '',
      rawUrl: json['raw_url'] ?? '',
      size: json['size'] ?? 0,
    );
  }
}

// gist_owner.dart
class GistOwner {
  final String login;
  final int id;
  final String nodeId;
  final String avatarUrl;
  final String gravatarId;
  final String url;
  final String htmlUrl;
  final String followersUrl;
  final String followingUrl;
  final String gistsUrl;
  final String starredUrl;
  final String subscriptionsUrl;
  final String organizationsUrl;
  final String reposUrl;
  final String eventsUrl;
  final String receivedEventsUrl;
  final String type;
  final String userViewType;
  final bool siteAdmin;

  GistOwner({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.userViewType,
    required this.siteAdmin,
  });

  factory GistOwner.fromJson(Map<String, dynamic> json) {
    return GistOwner(
      login: json['login'] ?? '',
      id: json['id'] ?? 0,
      nodeId: json['node_id'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
      gravatarId: json['gravatar_id'] ?? '',
      url: json['url'] ?? '',
      htmlUrl: json['html_url'] ?? '',
      followersUrl: json['followers_url'] ?? '',
      followingUrl: json['following_url'] ?? '',
      gistsUrl: json['gists_url'] ?? '',
      starredUrl: json['starred_url'] ?? '',
      subscriptionsUrl: json['subscriptions_url'] ?? '',
      organizationsUrl: json['organizations_url'] ?? '',
      reposUrl: json['repos_url'] ?? '',
      eventsUrl: json['events_url'] ?? '',
      receivedEventsUrl: json['received_events_url'] ?? '',
      type: json['type'] ?? '',
      userViewType: json['user_view_type'] ?? '',
      siteAdmin: json['site_admin'] ?? false,
    );
  }
}

// gist with ownwer

class GistWithOwner {
  final Gist gist;
  final GistOwner owner;

  GistWithOwner({required this.gist, required this.owner});
}

// gist.dart
class Gist {
  final String url;
  final String forksUrl;
  final String commitsUrl;
  final String id;
  final String nodeId;
  final String gitPullUrl;
  final String gitPushUrl;
  final String htmlUrl;
  final Map<String, GistFile> files;
  final bool public;
  final String createdAt;
  final String updatedAt;
  final String description;
  final int comments;
  final dynamic user;
  final String commentsUrl;
  final GistOwner owner;
  final bool truncated;

  Gist({
    required this.url,
    required this.forksUrl,
    required this.commitsUrl,
    required this.id,
    required this.nodeId,
    required this.gitPullUrl,
    required this.gitPushUrl,
    required this.htmlUrl,
    required this.files,
    required this.public,
    required this.createdAt,
    required this.updatedAt,
    required this.description,
    required this.comments,
    required this.user,
    required this.commentsUrl,
    required this.owner,
    required this.truncated,
  });

  factory Gist.fromJson(Map<String, dynamic> json) {
    // Convert files map
    final filesJson = json['files'] as Map<String, dynamic>;
    final files = filesJson.map(
      (key, value) => MapEntry(
        key,
        GistFile.fromJson(value as Map<String, dynamic>),
      ),
    );

    return Gist(
      url: json['url'] ?? '',
      forksUrl: json['forks_url'] ?? '',
      commitsUrl: json['commits_url'] ?? '',
      id: json['id'] ?? '',
      nodeId: json['node_id'] ?? '',
      gitPullUrl: json['git_pull_url'] ?? '',
      gitPushUrl: json['git_push_url'] ?? '',
      htmlUrl: json['html_url'] ?? '',
      files: files,
      public: json['public'] ?? false,
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      description: json['description'] ?? '',
      comments: json['comments'] ?? 0,
      user: json['user'], // Can be null
      commentsUrl: json['comments_url'] ?? '',
      owner: json['owner'] != null
          ? GistOwner.fromJson(json['owner'] as Map<String, dynamic>)
          : GistOwner.fromJson({}), // Provide empty map if owner is null
      truncated: json['truncated'] ?? false,
    );
  }

  // Helper method to get file names
  List<String> get fileNames => files.keys.toList();

  // Helper method to get a specific file
  GistFile? getFile(String filename) => files[filename];
}

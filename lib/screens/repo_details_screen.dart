import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_app/data/github_api_data.dart';
import 'package:github_repo_app/models/repository.dart';
import 'package:github_repo_app/widgets/repo_card.dart';

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

class RepoDetailsScreen extends StatefulWidget {
  final GistService gistService;
  const RepoDetailsScreen({super.key, required this.gistService});

  @override
  State<RepoDetailsScreen> createState() => _RepoDetailsScreenState();
}

class _RepoDetailsScreenState extends State<RepoDetailsScreen> {
  final List<Gist> _gists = [];
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = '';
  int _currentPage = 1;
  final int _perPage = 30;
  bool _hasMoreData = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadGists();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_isLoading &&
        _hasMoreData) {
      _loadMoreGists();
    }
  }

  Future<void> _loadGists() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
      _hasError = false;
      _errorMessage = '';
    });

    try {
      final gists = await widget.gistService.getPublicGists(
        perPage: _perPage,
        page: _currentPage,
      );

      setState(() {
        _gists.addAll(gists);
        _hasMoreData = gists.length == _perPage;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _hasError = true;
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _loadMoreGists() async {
    _currentPage++;
    await _loadGists();
  }

  Future<void> _refreshGists() async {
    setState(() {
      _gists.clear();
      _currentPage = 1;
      _hasMoreData = true;
    });
    await _loadGists();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Repositories',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_hasError && _gists.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $_errorMessage'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _refreshGists,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _refreshGists,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _gists.length + (_hasMoreData ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _gists.length) {
            return _buildLoadingIndicator();
          }

          final gist = _gists[index];
          return RepoCard(
            repository: gist,
            owner: gist.owner,
            title: 'Repository ${index + 1}',
          );
        },
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return _isLoading
        ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : const SizedBox.shrink();
  }
}

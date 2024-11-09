import 'package:flutter/material.dart';
import 'package:github_repo_app/models/repository.dart';

class RepoCard extends StatelessWidget {
  final Repository repository;
  const RepoCard({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: NetworkImage(
                          repository.imageURL,
                        ),
                        // child: FadeInImage(
                        //     placeholder: MemoryImage(
                        //       kTransparentImage,
                        //     ),
                        //     image: NetworkImage(
                        //     repository.imageURL,
                        //   ),
                        // ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        'Title',
                        // 'Title okay this one is surely gonna overflow, if it will not I will make it overflow !!!',
                        maxLines: 1,
                        // softWrap: true,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text('Date Created'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                repository.description,
                // 'I am doing something, I am gonna finish this project. No matter what !, I am done running away from devlopment',
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color.fromARGB(255, 96, 96, 96),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(),
                  Text(
                    'Updated 4 days ago',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

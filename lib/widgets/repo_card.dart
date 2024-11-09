import 'package:flutter/material.dart';
import 'package:github_repo_app/models/repository.dart';

class RepoCard extends StatelessWidget {
  final Repository repository;
  const RepoCard({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Card(
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
      margin: const EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 15,
        ),
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
                        color: Colors.grey,
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
                color: Color(0xFF6E7781),
                fontWeight: FontWeight.w800,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    const Icon(
                      Icons.comment_outlined,
                      size: 34,
                      color: Color(0xFF6E7781),
                    ),
                    if (repository.comments > 0)
                      Positioned(
                        right: -2,
                        bottom: 16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.red.shade500,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 18,
                            minHeight: 18,
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${repository.comments}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Updated 4 days ago',
                ),
              ],
            ),
            // const SizedBox(
            //   height: 4,
            // ),
          ],
        ),
      ),
    );
  }
}

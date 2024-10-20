import 'package:flutter/material.dart';

import '../../domain/models/articles_model.dart';

void showFullScreenBottomSheet(
  BuildContext context,
  ArticlesModel articlesModel,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        expand: true,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  // SizedBox(
                  //   width: 200,
                  //   child: Image.network(
                  //     articlesModel.imageUrl,
                  //     loadingBuilder: (BuildContext context, Widget child,
                  //         ImageChunkEvent? loadingProgress) {
                  //       if (loadingProgress == null) {
                  //         return child;
                  //       } else {
                  //         return Center(
                  //           child: CircularProgressIndicator(
                  //             value: loadingProgress.expectedTotalBytes != null
                  //                 ? loadingProgress.cumulativeBytesLoaded /
                  //                     (loadingProgress.expectedTotalBytes ?? 1)
                  //                 : null,
                  //           ),
                  //         );
                  //       }
                  //     },
                  //   ),
                  // ),
                  Text(
                    articlesModel.title,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Row(
                    children: articlesModel.tags
                        .map(
                          (e) => Chip(label: Text(e)),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    articlesModel.publishedDate,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    articlesModel.content,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Fecha o Bottom Sheet
                    },
                    child: const Text('Fechar'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

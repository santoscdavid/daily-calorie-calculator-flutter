import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/models/articles_model.dart';
import '../../../domain/models/calc_model.dart';
import '../../../shared/utils/show_fullscreen_botton_sheet.dart';
import '../controller/calc_details_controller.dart';

class ArticlesWidget extends StatefulWidget {
  const ArticlesWidget({super.key, required this.calcModel});

  final CalcModel calcModel;

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  final _controller = Modular.get<CalcDetailsController>();

  @override
  void initState() {
    _controller.getArticles(widget.calcModel.objective);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Observer(builder: (context) {
      return Column(
        children: [
          Text(
            "Artigos para ajudar no seu objetivo",
            style: textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: !_controller.requestError,
            replacement: Center(
              child: Column(
                children: [
                  const Text("Erro ao coletar os artigos"),
                  IconButton(
                    onPressed: () =>
                        _controller.getArticles(widget.calcModel.objective),
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
            child: Visibility(
              visible: !_controller.loading,
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),
              child: Column(
                children: _controller.articlesModel != null
                    ? _controller.articlesModel!.articles
                        .map(
                          (e) => ArticleCard(
                            articlesModel: e,
                          ),
                        )
                        .toList()
                    : [],
              ),
            ),
          ),
        ],
      );
    });
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.articlesModel,
  });

  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Icon(Icons.web),
        title: Text(articlesModel.title),
        subtitle: Column(
          children: [
            Row(
              children: articlesModel.tags
                  .map(
                    (e) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Chip(
                          label: Text(e),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        onTap: () => showFullScreenBottomSheet(context, articlesModel),
      ),
    );
  }
}

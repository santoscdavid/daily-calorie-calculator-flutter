import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/calc_details_controller.dart';

class ArticlesWidget extends StatefulWidget {
  const ArticlesWidget({super.key});

    

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  final _controller = Modular.get<CalcDetailsController>();

  @override
  void initState() {
    _controller.getArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          "Artigos para ajudar no seu objetivo",
          style: textTheme.bodyLarge,
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: _controller.requestError,
          replacement: Center(
            child: Column(
              children: [
                const Text("Erro ao coletar os artigos"),
                IconButton(
                  onPressed: () => _controller.getArticles(),
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
                        (e) => const ArticleCard(),
                      )
                      .toList()
                  : [],
            ),
          ),
        ),
      ],
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Icon(Icons.web),
        title: const Text('Visitar Página Web'),
        subtitle: const Text('Clique para acessar o site'),
        onTap: () {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../controller/historic_controller.dart';

class LastResultWidget extends StatefulWidget {
  const LastResultWidget({super.key});

  @override
  State<LastResultWidget> createState() => _LastResultWidgetState();
}

class _LastResultWidgetState extends State<LastResultWidget> {
  final _controller = Modular.get<HistoricController>();

  @override
  void initState() {
    _controller.getLastResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Observer(
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ultimo resultado",
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            _controller.lastResult != null
                ? Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Teste feito em ${DateFormat('dd/MM/yyyy').format(_controller.lastResult!.createdOn)}",
                              ),
                              subtitle: Text(
                                "Calorias recomendadas: ${_controller.lastResult!.dailyCaloriesObjective}",
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Modular.to.navigate(
                                      'calc-details',
                                      arguments: _controller.lastResult!,
                                    );
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Ver detalhes"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const Column(
                    children: [
                      Text("Não há nenhum resultado salvo"),
                    ],
                  ),
            _controller.lastResult != null
                ? ElevatedButton(
                    onPressed: () {
                      _controller.saveResultInHistoric(null);
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.delete),
                        Text("Apagar Resultado"),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}

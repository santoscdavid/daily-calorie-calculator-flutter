import 'package:flutter/material.dart';

class TmbWidget extends StatelessWidget {
  const TmbWidget({
    super.key,
    required this.tbmValue,
  });

  final String tbmValue;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text("Sua Taxa Metabólica Basal"),
                subtitle: Text(
                  "Essa é a quantidade de calorias que o corpo queima em repouso.",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tbmValue,
                      style: textTheme.labelLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

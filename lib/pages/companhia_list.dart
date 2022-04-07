import 'package:flutter/material.dart';
import 'package:infraero/mock/companhias_mock.dart';

class CompanhiaList extends StatelessWidget {
  const CompanhiaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: companhia.length,
        itemBuilder: (_, index) {
          final item = companhia[index];
          return Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            constraints: const BoxConstraints(minHeight: 100, maxWidth: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Companhia: ${item.nome}',
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            height: 15,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:infraero/mock/voos_mock.dart';

class VooList extends StatelessWidget {
  const VooList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: voo.length,
        itemBuilder: (_, index) {
          final item = voo[index];
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
                Text('Aeroporto: ${item.aeroporto}',
                    style: const TextStyle(color: Colors.white)),
                Text('Companhia: ${item.companhia}',
                    style: const TextStyle(color: Colors.white)),
                Text('Data: ${item.dataVoo}',
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

import 'package:flutter/material.dart';
import 'package:infraero/mock/aeroportos_mock.dart';

class AeroportoList extends StatelessWidget {
  const AeroportoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: aeroporto.length,
        itemBuilder: (_, index) {
          final item = aeroporto[index];
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
                Text(
                  'Aeroporto: ${item.nome}',
                  style: const TextStyle(color: Colors.white),
                ),
                Text('Localização: ${item.localizacao}',
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

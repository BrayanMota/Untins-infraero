import 'package:flutter/material.dart';
import 'package:infraero/pages/aeroporto_list.dart';
import 'package:infraero/pages/companhia_list.dart';
import 'package:infraero/pages/voo_list.dart';

void main() {
  runApp(const Infraero());
}

class Infraero extends StatelessWidget {
  const Infraero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Aeroportos'),
                Tab(text: 'Companhias'),
                Tab(text: 'Voos'),
              ],
            ),
            title: const Text('Infraero'),
          ),
          body: const TabBarView(
            children: [
              AeroportoList(),
              CompanhiaList(),
              VooList(),
            ],
          ),
        ),
      ),
    );
  }
}

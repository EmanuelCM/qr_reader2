import 'package:flutter/material.dart';
import 'package:qr_reader2/page/pages.dart';

import 'package:qr_reader2/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_forever,
              ))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorbar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // floatingActionButton:
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // cambiar para mostrar la pagina
    final currentIdex = 1;

    switch (currentIdex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}

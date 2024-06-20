import 'package:flutter/material.dart';
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
      body: const Center(
        child: Text('Home tage'),
      ),
      bottomNavigationBar: const CustomNavigatorbar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // floatingActionButton:
  }
}

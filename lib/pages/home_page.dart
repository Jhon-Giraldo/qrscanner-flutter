import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/pages/address_page.dart';
import 'package:qrscan/providers/ui_provider.dart';
import 'package:qrscan/widgets/custom_navigationbar.dart';
import 'package:qrscan/pages/maps_pages.dart';
import 'package:qrscan/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationbar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    //Obtain selected menu
    final uiProvider = Provider.of<UiProvider>(context);

    //It changes in order to show respective page
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return MapsPage();

      case 1:
        return AddressPage();

      default:
        return MapsPage();
    }
  }
}

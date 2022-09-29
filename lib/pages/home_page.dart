import 'package:flutter/material.dart';
import 'package:qrscan/widgets/custom_navigationbar.dart';
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
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.delete_forever))
        ],
      ),
      body: Center(
        child: Text('Home Page'),
     ),
     bottomNavigationBar: CustomNavigationbar(),
     floatingActionButton: ScanButton(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }
}
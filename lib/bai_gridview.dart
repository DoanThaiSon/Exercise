import 'package:flutter/material.dart';
class BTGridView extends StatelessWidget {
  const BTGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
            crossAxisCount: 3,
          children: [

          ],
        ),
      ),
    );
  }
}

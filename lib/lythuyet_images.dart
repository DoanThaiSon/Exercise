import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/flutter_buoi2_btvn/bai_tap_thiet_ke.dart';
import 'package:myapp/flutter_buoi3_listview/bai_tap_listview.dart';

class ImageProject extends StatefulWidget {
  const ImageProject({Key? key}) : super(key: key);

  @override
  State<ImageProject> createState() => _ImageProjectState();
}

class _ImageProjectState extends State<ImageProject> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controllerPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/absen2.png'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: TextField(
              controller: _controller,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: TextField(
              controller: _controllerPassWord,
            ),
          ),
          ElevatedButton(
              onPressed: () {
              },
              child: const Text('TestButton'))
        ],
      ),
    );
  }
}

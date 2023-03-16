import 'package:flutter/material.dart';
class BaiTap2 extends StatelessWidget {
  const BaiTap2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bài tập về nhà số 2"),
      ),
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/absen2.png",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Intermedite"),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Today's\nChallenge",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "German meals",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(
                          Icons.diamond,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Take this leasson to\nearn a new milestone",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Positioned(
          //     top: 0,
          //     right: 0,
          //     child: Image.asset(
          //       "assets/images/people1.png",
          //       width: 300,
          //       height: 300,
          //     ))
        ],
      ),
    );
  }
}

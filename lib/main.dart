import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
//   // Kiểu dữ liệu String
//   String s1 ="doan thai son";
//   print(s1);
//   print(s1.contains("2").toString());
//   print("Chuỗi s1 chứa kí tự 2 không ? : ${s1.contains("2").toString()}");//kiểm tra trong chuỗi có số 2 hay không
//   print("Chuỗi s1 chứa kí tự : $s1");
//   print(s1.toLowerCase());
//   print(s1.toUpperCase());
//
//   String sdt = "0936838382";
//   print(sdt.indexOf("2"));// trả về vị trí của số 2 trong dãy sdt
//   print(sdt.startsWith("0"));// kiểm tra trong chuỗi có bắt đầu bằng kí tự 0 hay không
//
//   sdt =sdt.replaceAll("382", "");// bỏ đi kí tự 382 trong chuỗi
//   print(sdt);
//
//   String sss = " 111 ";
//   print(sss.trim());// bỏ "khoảng trắng ở đầu/cuối" của chuỗi
//
//   // Kiểu dữ liệu int - Số nguyên
//   int a = 10;
//   int b = 20;
//   print(a+b);
//
//   double c =10.0;
//   print(a.toDouble());// parse sang kiểu double
//   print(c.toInt());// parse sang kiểu int
//
//   double dd =20;
//   print(dd==a);// so sánh giá trị dd với giá trị a. Nếu bằng sẽ là true, sai sẽ là false
//
//   print(dd.runtimeType);// trả về kiểu dữ liệu của biến
//
//   String bien1 = "10000";
//   print(double.parse(bien1));
//
//   // Kiểu dữ liệu bool
//
//   bool bA = true;
//   bool bB = true;
//   if(bA&bB){
//     print("bA đúng");
//   }
//
//   if(bA && bB) {
//     print("ca 2 đều đúng");
//   }
//
//   if(bA || bB){
//     print("bA hoặc bB đúng");
//   }
//
// // List
//   // Cách cách khai báo list
//   List<String> myList1 = ["a","b","c"];
//   List<int> myList2 = [1,2,3];
//   List myList3 = [4,5,6];
//   print(myList1);
//   print(myList2);
//   print(myList3);
//
//   myList1.add("d");// add thêm 1 kí tự "d"
//   print(myList1);
//   myList2.add(4);// add thêm 1 phần tử 4
//   print(myList2);
//   myList1.addAll(["e","f","g"]);// thêm 1 chuỗi các kí tự
//   print(myList1);
//
//
//   myList1.remove("g");// xóa đi kí tự "g"
//   print(myList1);
//
//   print("subList:${myList1.sublist(3,myList1.length)}");
//
//   List<int> abc = [2,3,4];
//
//   List<int> bbb = abc;
//
//   abc.remove(2);
//   print("mang abc:${abc}");
//   print("mang bbb: ${bbb}");
//   print(abc[0]);
//
//   Map<String,String> map = {"key":"value","key":"newValue","a":"bb"};
//   print(map);
//   print(map["a"]);// lấy giá trị của map với key bằng a
//
//   print(map.keys);// lấy giá trị keys có trong map
//   print(map.values);// lấy giá trị value có trong map;
//
//
//   const String String1 = 'bbbbb'; // khi khai báo const/final thì không thể thay đổi được giá trị của tham số
//   // String1 = 'ccc';
//   // var có thể khai báo bằng bất cứ kiểu nào
//   var chuoiS = "25251325";
//   var chuoiK = 25251325;
  String str = " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  String str1 = "${str.toString().substring(1,2).toUpperCase()}${str.toString().substring(2,5)}";
  String str2 = "${str.toString().substring(5,38)}";
  String str3 = "${str.toString().substring(38,39).toUpperCase()}${str.toString().substring(39,42)}";
  String str4 = "${str.toString().substring(42,54).toUpperCase()}${str.toString().substring(55,64)}";

  print(str1+str2+str3+str4);

  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];
  String c1 = "${arr[3].toString().substring(0,1).toUpperCase()}${arr[3].toString().substring(1,3)}";//Đây
  String c2 = "${arr[5]}";//là
  String c3 = "${arr[4]}";//kết
  String c4 = "${arr[9].toString().substring(5,9)}";//quả
  String c5 = "${arr[8].toString().substring(6,11)}";//buổi
  String c6 = "${arr[8].toString().substring(15,19)}";//học
  String c7 = "${arr[9].toString().substring(1,4)}";//thứ
  String c8 = "${arr[1]}";//2
  String c9 = "${arr[9].toString().substring(10,13)}";//về
  String c10 = "${arr[11].toString().substring(9,11).toUpperCase()}${arr[11].toString().substring(11,14)}";//Dart
  String c11 = "${arr[8].toString().substring(35,47).toUpperCase()}";//: DART BASIC
  String c12 = "${arr[9].toString().substring(5,6)}";// dấu cách
  String c13 = "${arr[10].toString().substring(0,8)}";//(phần 1)



  print(c1+c12+c2+c12+c3+c4+c5+c6+c12+c7+c12+c8+c9+c10+c11+c12+c13);
}
class A{
  late String son; // có thể khai báo trá trị son sau
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String hoVaTen = "Đoàn Thái Sơn";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            Text(hoVaTen,style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

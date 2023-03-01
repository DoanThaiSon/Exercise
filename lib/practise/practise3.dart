import 'package:flutter/material.dart';
import 'dart:developer';
void main() {
  //Bài tập 4: Các hàm chuyển đổi qua lại giữa String, int, double
  String IntToString(int input){
    return input.toString();
  }
  String DoubleToString(double input){
    return input.toString();
  }

  int DoubleToIn(double input){
    return input.toInt();
  }

  double IntoDouble(int input){
    return input.toDouble();
  }

// Kết quả bài tập 1+2:
  print(IntToString(3));
  print(DoubleToString(3.0));
  print (DoubleToIn(20.5));
  print (IntoDouble(20));


  var info1 = Info1();
  info1.name = "Son";
  info1.tuoi = 27;
  info1.job = "IT";
  print(info1.name);
  Info.name = "Son1";
  print(Info.name);


  var num =6;
  var fact = deQuy(num);
  print(fact);
}
//Bài tập 1+2:
// Non - nullable types

late double a = 1.0;// khai báo Non-nullable kiểu double với từ khóa late
num b = 2.0;
const int c = 3;// khai báo Non-nullable kiểu int với từ khóa const
final String d = "4.0";// khai báo Non-nullable kiểu String với từ khóa final
bool checK = true;
List<int> list = [1,2,3,4];

class Info{// khai báo class có kiểu dữ liệu Nol-nullable
  static String name = "";
  int tuoi = 26;
  String job = "IT1";
}
// Nullable types

late double? a1 = null;//khai báo Nullable kiểu double với từ khóa late
num? b1 = null;
const int? c1 = null;//khai báo Nullable kiểu int với từ khóa const
final String? d1 = null;//khai báo Nullable kiểu String với từ khóa final
bool? checK1 = null;
List <int?> list1 = [null];//

class Info1{
  String? name;
  int? tuoi;
  String? job;
}

// Bài tập 3:
int deQuy(int num){
  if(num <=1){
    return 1;
  }else{
    return num*deQuy(num-1);
  }
}
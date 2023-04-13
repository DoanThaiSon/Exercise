import 'package:flutter/material.dart';

class BaiTap2 extends StatefulWidget {

  const BaiTap2({Key? key}) : super(key: key);

  @override
  State<BaiTap2> createState() => _BaiTap2State();
}

class _BaiTap2State extends State<BaiTap2> {
  int _quantity = 0;
  int _selectedMonth = -1;
  final List<String> _months = [
    "Tháng 1",
    "Tháng 2",
    "Tháng 3",
    "Tháng 4",
    "Tháng 5",
    "Tháng 6",
    "Tháng 7",
    "Tháng 8",
    "Tháng 9",
    "Tháng 10",
    "Tháng 11",
    "Tháng 12"
  ];

  void _selectMonth(int index) {
    setState(() {
      _selectedMonth = index;
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  Widget _buildMonthButton(String month, int index) {
    return GestureDetector(
      onTap: () => _selectMonth(index),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: _selectedMonth == index ? Colors.red : Colors.black,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(month),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bài tập về nhà số 2"),
      ),
      body:Column(
        children: [
          SizedBox(height: 20.0),
          Text(
            'Chọn tháng:',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _months
                .asMap()
                .entries
                .map((entry) =>
                _buildMonthButton(entry.value, entry.key))
                .toList(),
          ),
          SizedBox(height: 20.0),
          Text(
            'Số lượng:',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed:
                _selectedMonth == -1 ? null : () => _decrementQuantity(),
              ),
              Text(_quantity.toString()),
              IconButton(
                icon: Icon(Icons.add),
                onPressed:
                _selectedMonth == -1 ? null : () => _incrementQuantity(),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _selectedMonth == -1 ? null : () {},
            child: Text('Xác nhận'),
          ),
        ],
      ),
    );
  }
}


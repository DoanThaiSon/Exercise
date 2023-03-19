import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? userName;
  String? passWord;
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 80),
            Image(
              height: 200.0,
              width: 200.0,
              image: NetworkImage("https://techmaster.vn/resources/image/hoclacoviec.jpg"),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Tên người dùng',
                  border: OutlineInputBorder(),
                ),
                controller: userNameController,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  hintText: 'Mật khẩu',
                  border: const OutlineInputBorder(),
                  suffixIcon: InkWell(
                    onTap: _toggleVisibility,
                    child: Icon(
                      _isHidden ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
                controller: passwordController,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = userNameController.text;
                  passWord = passwordController.text;
                });
              },
              child: const Text('Đăng nhập'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Tên đăng nhập và mật khẩu là:"),
            Text("Username: $userName"),
            Text("Password:$passWord")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/card_page.dart';

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

  void _checkLogin() {
    String userLogin = "doanthaison";
    String passLogin = '123456';
    String checkUsername = userNameController.text.trim().toLowerCase();
    String checkPassword = passwordController.text.trim().toLowerCase();

    if (checkUsername.isEmpty || checkPassword.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Lỗi!"),
            content:
                const Text("Tên đăng nhập hoặc mật khẩu không được để trống."),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (checkUsername == userLogin && checkPassword == passLogin) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CardPage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Lỗi!"),
            content: const Text("Tên đăng nhập hoặc mật khẩu không chính xác."),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  passwordController.clear();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Widget _renderImage() {
    return const Image(
      height: 200,
      width: 200,
      image:
          NetworkImage("https://techmaster.vn/resources/image/hoclacoviec.jpg"),
    );
  }

  Widget _renderTextField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
      ],
    );
  }

  Widget _renderButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _checkLogin();
        });
      },
      child: const Text('Đăng nhập'),
    );
  }

  Widget _renderBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 80),
          _renderImage(),
          const SizedBox(height: 50),
          _renderTextField(),
          const SizedBox(height: 20),
          _renderButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _renderBody(),
    );
  }
}

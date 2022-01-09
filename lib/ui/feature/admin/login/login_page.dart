import 'package:barber_book_app/ui/feature/admin/login/login_controller.dart';
import 'package:barber_book_app/ui/feature/welcome/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final LoginController loginController;

  const LoginPage({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _userTextController;
  late TextEditingController _passTextController;

  @override
  void initState() {
    _userTextController = TextEditingController();
    _passTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            iconSize: 24,
            onPressed: widget.loginController.onBack,
          ),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                width: 400,
                child: TextField(
                  controller: _userTextController,
                  maxLength: 34,
                  onChanged: (text) => setState(() {}),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white, fontSize: 21),
                  decoration: InputDecoration(
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelText: "Usuario",
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                width: 400,
                child: TextField(
                  controller: _passTextController,
                  maxLength: 34,
                  onChanged: (text) => setState(() {}),
                  onEditingComplete: () {},
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white, fontSize: 21),
                  decoration: InputDecoration(
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelText: "Contraseña",
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                      )),
                ),
              ),
              MaterialButton(
                  padding: const EdgeInsets.only(
                    top: 21,
                    bottom: 21,
                    right: 30,
                    left: 30,
                  ),
                  color: Colors.blueAccent,
                  child: Obx ( () => !widget.loginController.doingLogin.value
                      ? const Text(
                          "Entrar",
                          style: TextStyle(color: Colors.white, fontSize: 21),
                        )
                      : Container(
                          width: 31,
                          height: 31,
                          child: const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                  ),
                  onPressed: () async {
                    final resultLogin = await widget.loginController.doLogin(
                      user: _userTextController.text,
                      password: _passTextController.text,
                    );
                    if (resultLogin) {
                      // TODO: navigate
                      Get.toNamed("/");
                    } else {
                      // TODO: show error!
                    }
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

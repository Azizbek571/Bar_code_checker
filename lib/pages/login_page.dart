import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inha_app/pages/main_page.dart';
import 'package:inha_app/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        width: 500,
        // height: 500,

        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(thickness: 1, color: Color.fromARGB(255, 207, 195, 195)),
            const SizedBox(height: 30),
            const Text(
              "Вход в Inha-Engineering",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            const SizedBox(height: 5),
            const Text("Введите свою почту и пароль для входа."),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              // color: Colors.red,
              width: 500,
              height: 500,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Имя Пользователья",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary)),
                      hintText: "username",
                      hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Пароль",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                        hintText: "********"),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(8),
                    width: 500,
                    // height: 300,
                    child: TextButton(
                        onPressed: () {
                          Get.to(()=> const MainPage());
                        },
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        )),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  Container(
                      width: 500,
                      child: TextButton(
                          onPressed: () {
                            Get.to(() => const RegisterPage());
                          },
                          child: const Text(
                            "Регистрация",
                            style: TextStyle(color: Colors.black),
                          ))),
                  // const SizedBox(height: 25),
                          
           
                ],
              ),
              
            ),
             const Divider(
              // indent: BorderSide.strokeAlignCenter,
              thickness: 1, color: Color.fromARGB(255, 207, 195, 195)),

          ],
        ),
      ),
    );
  }
}

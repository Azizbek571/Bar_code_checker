import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inha_app/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
         padding: const EdgeInsetsDirectional.all(20),
         width: 500,
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Присоединяйтесь",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              // SizedBox(height: 10),
              const Text(
                "к нам сегодня",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              const SizedBox(height: 20),
                
              Container(
                 padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                // color: Colors.red,
                
                child: const Text(
                  "Внимательно заполните форму для регистрации",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
                  
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                // color: Colors.red,
                width: 500,
                height: 500,
                // color: Colors.red,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text( "ФИО",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "Иванова София Ивановна",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text( "Электронная почта",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "name@mail.com",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text( "Username",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text( "Название Организации",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "Digital Camp",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text( "ИНН организации",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "7727563778",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text( "Контактный номер",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary)),
                          hintText: "+998911111111",
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 179, 172, 172))
                        ),
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
                        onPressed: () {},
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.white,fontSize: 17),
                        )),
                  ),
                    
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.blueGrey),
                            ),
                            TextButton(
                              
                              onPressed: (){
                                Get.to(()=> const LoginPage());
                              }, child: const Text("Sign in",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),))
                          ],
                        ),
                      ),
                     
                      // const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ],
          ),
       ),
      );
    
  }
}

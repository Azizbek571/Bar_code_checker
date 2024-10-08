import 'package:flutter/material.dart';
import 'package:inha_app/config/imports.dart';
import 'package:inha_app/pages/HandBook/nomeclature.dart';

class DirectoryPage extends StatefulWidget {
  const DirectoryPage({super.key});

  @override
  State<DirectoryPage> createState() => _DirectoryPageState();
}

class _DirectoryPageState extends State<DirectoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Dashboard/ Hand-book"),
        actions: [
         const Bell(),
          IconButton(
          
            onPressed: () {
            
              // Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
      body:  Column(
        children: [
          Row(
                          children: [
                            Builder(builder: (context) {
                              return Container(
                                width: 150,
                              height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                padding: const EdgeInsets.only(left: 15),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hand-book",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              );
                            }),
                            
                            
                            Container(
                              width: 200,
                              height: 52,
                              child: const TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(),
                                    hintText: "Search",
                                    labelText: "Search"),
                              ),
                            ),
                          
                          ],
                        ),


                        InkWell(
                          onTap: () {
                            Get.to(()=> NomenclaturePage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              
                              padding: const EdgeInsets.all(10),
                              height: 60,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft:Radius.circular(10),
                                  bottomRight:Radius.circular(10),
                                  ),
                                color:  Theme.of(context).colorScheme.tertiary
                              ),
                              child: const Row(children: [Icon(Icons.list), 
                              SizedBox(width: 10,),
                            Text("Номенклатура",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                          Icon(Icons.arrow_forward_ios)
                            ],),),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft:Radius.circular(10),
                                bottomRight:Radius.circular(10),
                                ),
                              color:  Theme.of(context).colorScheme.tertiary
                            ),
                            child: const Row(children: [Icon(Icons.apartment), 
                            SizedBox(width: 10,),
                          Text("Организация",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                        Icon(Icons.arrow_forward_ios)
                          ],),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft:Radius.circular(10),
                                bottomRight:Radius.circular(10),
                                ),
                              color:  Theme.of(context).colorScheme.tertiary
                            ),
                            child: const Row(children: [Icon(Icons.people), 
                            SizedBox(width: 10,),
                          Text("Контуры ГИСМТ",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                        Icon(Icons.arrow_forward_ios)
                          ],),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft:Radius.circular(10),
                                bottomRight:Radius.circular(10),
                                ),
                              color:  Theme.of(context).colorScheme.tertiary
                            ),
                            child: const Row(children: [Icon(Icons.attach_money), 
                            SizedBox(width: 10,),
                          Text("Контрагенты",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                        Icon(Icons.arrow_forward_ios)
                          ],),),
                        ),


        ],
      ),
                    
    );
    
  }
}
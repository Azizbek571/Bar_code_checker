import 'package:flutter/material.dart';
import 'package:inha_app/components/home/bell.dart';
import 'package:inha_app/config/imports.dart';
import 'package:inha_app/pages/HandBook/create.dart';

class NomenclaturePage extends StatefulWidget {
  const NomenclaturePage({super.key});

  @override
  State<NomenclaturePage> createState() => _NomenclaturePageState();
}

class _NomenclaturePageState extends State<NomenclaturePage> {
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
                            Get.to(()=> CreateNomePage());
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
                              child: const Row(children: [Icon(Icons.draw), 
                              SizedBox(width: 10,),
                            Text("Создать",
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
                            child: const Row(children: [Icon(Icons.create_new_folder), 
                            SizedBox(width: 10,),
                          Text("Upload file",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        
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
                            child: const Row(children: [Icon(Icons.create_sharp), 
                            SizedBox(width: 10,),
                          Text("Создать группу",
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
                            child: const Row(children: [Icon(Icons.find_in_page), 
                            SizedBox(width: 10,),
                          Text("Найти",
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
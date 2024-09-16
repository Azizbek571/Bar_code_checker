import 'package:flutter/material.dart';
import 'package:inha_app/components/CustomDropDown.dart';
import 'package:inha_app/components/Custom_dropdown/custom_dropdown.dart';
import 'package:inha_app/components/input.dart';
import 'package:inha_app/config/imports.dart';
import 'package:inha_app/pages/HandBook/createinfo.dart';
import 'package:inha_app/stores/add_info_controller.dart';

class CreateNomePage extends StatefulWidget {
  const CreateNomePage({super.key});
  @override
  State<CreateNomePage> createState() => _CreateNomePageState();
}

class _CreateNomePageState extends State<CreateNomePage> {
  AddInfoController controller = Get.put(AddInfoController());

  List<String>_list = ['Tobacco', 'Alcohol', 'Beer','Pharma', 'Appliances', 'Water', 'Antiseptic'];
  List<String>_list2 = ['Потребительская', 'Групповая', 'Транспортная'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Номенклатура(создание)",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: 
          
          Column(
            children: [

              
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [

                   PaymentType(
                  
                      hintText: "Тип товара",
                      child: CustomDropdown<String>(
                        decoration: CustomDropdownDecoration(
                          
                             closedFillColor: Theme.of(context).colorScheme.background,
                             

                            closedBorderRadius: BorderRadius.circular(5),
                            closedBorder: Border.all(color: Colors.black),
                            // closedFillColor: const Color.fromARGB(255, 117, 165, 247),
                            expandedFillColor:
                              Theme.of(context).colorScheme.primary,
                                
                                ),
                                
                        hintText: 'Тип товара',
                        items: _list,
                        // initialItem: _list[0],
                        onChanged: (value) {
                          // controller.payment.text=value!;
                          // print('changing value to: $value');
                        },
                      ),
                    ),
                ],
                ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [

                    PaymentType(
                    
                      hintText: "Тип упаковки товара",
                      child: CustomDropdown<String>(
                        decoration: CustomDropdownDecoration(
                          
                             closedFillColor: Theme.of(context).colorScheme.background,
                             

                            closedBorderRadius: BorderRadius.circular(5),
                            closedBorder: Border.all(color: Colors.black),
                            // closedFillColor: const Color.fromARGB(255, 117, 165, 247),
                            expandedFillColor:
                              Theme.of(context).colorScheme.primary,
                                
                                ),
                        hintText: 'Тип упаковки товара',
                        items: _list2,
                        // initialItem: _list[0],
                        onChanged: (value) {
                          // controller.payment.text=value!;
                          // print('changing value to: $value');
                        },
                      ),
                    ),
                ],
                ),
                ),
              ),
              const SizedBox(height: 8),


              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "Наименование", child:Input(
                    labelText: "Наименование",
                    hintText: "Наименование", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),

              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "GTIN", child:Input(
                    labelText: "GTIN",
                    hintText: "GTIN", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "Срок годности в днях", child:Input(
                    labelText: "Срок годности в днях",
                    hintText: "Срок годности в днях", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "Количество в упаковке", child:Input(
                    labelText: "Количество в упаковке",
                    hintText: "Количество в упаковке", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "Код ТН ВЭД", child:Input(
                    labelText: "Код ТН ВЭД",
                    hintText: "Код ТН ВЭД", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  AddInfoPage(hintText: "ИКПУ", child:Input(
                    labelText: "ИКПУ",
                    hintText: "ИКПУ", 
                  controller:controller.name )),
                ],),
                ),
              ),
              const SizedBox(height: 8),






            
            ],
          ),
        ),);
  }
}

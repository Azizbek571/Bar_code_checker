import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:inha_app/components/home/appbar_clients.dart';
import 'package:inha_app/components/home/appbar_money.dart';
import 'package:inha_app/components/home/appbar_sales.dart';
import 'package:inha_app/components/home/appbar_users.dart';
import 'package:inha_app/components/home/bell.dart';
import 'package:inha_app/pages/bar%20graph/bar_graph.dart';
import 'package:inha_app/pages/drawerpages/aggregation.dart';
import 'package:inha_app/pages/drawerpages/directory.dart';
import 'package:inha_app/pages/drawerpages/documents.dart';
import 'package:inha_app/pages/drawerpages/fitting.dart';
import 'package:inha_app/pages/drawerpages/order.dart';
import 'package:inha_app/pages/drawerpages/settings.dart';
import 'package:inha_app/pages/drawerpages/shipping.dart';
import 'package:inha_app/pages/drawerpages/writingOff.dart';
import 'package:inha_app/pages/line%20graph/individual_line.dart';
import 'package:inha_app/pages/line%20graph/lineChart.dart';
import 'package:inha_app/pages/login_page.dart';
import 'package:inha_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];

  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Dashboard/ Home"),
        actions: [
          const Bell(),
          IconButton(
            onPressed: () {
              key.currentState!.openEndDrawer();
              // Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
      body:
          // const App_bar(),

          SingleChildScrollView(
            child: Column(
                    children: [
            Container(
              height: 80,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Builder(builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              padding: const EdgeInsets.all(5),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        const SizedBox(width: 20),
                        Container(
                          width: 200,
                          height: 40,
                          child: const TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                hintText: "Search",
                                labelText: "Search"),
                          ),
                        ),
                        Container(
                          // color: Colors.black,
                          width: 60,
                          height: 40,
                          // color: Colors.red,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.blueGrey,
                              ),
                              Text(
                                "Test",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  AppBar_money(),
                  SizedBox(width: 10),
                  AppBar_Users(),
                  SizedBox(width: 10),
                  AppBar_clients(),
                  SizedBox(width: 10),
                  AppBar_Sales(),
                ],
              ),
            ),
            
            
            
            
            
            
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
              
              
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30, right:20),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          height: 300,
                          width: 350,
                          child: MyBarGraph(weeklySummary: weeklySummary),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                          width: 350,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Website View",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black87),
                              ),
                              Text("Last Campaign Performance"),
                              SizedBox(height: 8),
                              Divider(
                                color: Color.fromARGB(255, 195, 189, 189),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 5),
                                  Text("campaign sent 2 days ago"),
              
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 30,),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          height: 300,
                          width: 400,
                          child: LineChartWidgets(lines: individualLines,),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                          width: 400,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daily Sales",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black87),
                              ),
                              Text("15% increase in today's sales"),
                              SizedBox(height: 8),
                              Divider(
                                color: Color.fromARGB(255, 195, 189, 189),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 5),
                                  Text("updated 4 min ago"),
              
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              
              
              
              
              
              
                ],
              ),
            ),


           
            
            
            
            
            
            
            
            
            
            
            
                    ],
                  ),
          ),









      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: ListView(
          children: [
            Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "Material Tailwind React",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Главная"),
              onTap: () {
                Get.to(() => const MainPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_document),
              title: const Text("Документы"),
              onTap: () {
                Get.to(() => const DocumentsPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_mark_rounded),
              title: const Text("Справочник"),
              onTap: () {
                Get.to(() => const DirectoryPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.draw),
              title: const Text("Заказ"),
              onTap: () {
                Get.to(() => const OrderPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.stacked_bar_chart),
              title: const Text("Нанесение"),
              onTap: () {
                Get.to(() => const DocumentsPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text("Агрегация"),
              onTap: () {
                Get.to(() => const AggregationPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_shipping),
              title: const Text("Отгрузка"),
              onTap: () {
                Get.to(() => const ShipmentPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_note),
              title: const Text("Списание"),
              onTap: () {
                Get.to(() => const WritingOfPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud),
              title: const Text("Примерка"),
              onTap: () {
                Get.to(() => const FittingPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Настройки"),
              onTap: () {
                Get.to(() => const SettingsPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_back_ios_new),
              title: const Text("Log out"),
              onTap: () {
                Get.to(() => const LoginPage());
              },
            ),
          ],
        ),
      ),
      extendBody: true,
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Dashboard Configurator",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dark Mode",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    CupertinoSwitch(
                      value: Provider.of<ThemeProvider>(context, listen: false)
                          .isDarkMode,
                      onChanged: (value) =>
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Navbar Fixed",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.switch_access_shortcut_add_rounded))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

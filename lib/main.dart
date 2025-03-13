import 'package:flutter/material.dart';
import 'package:hello_world/api_integration/user_info_list_page.dart';
import 'package:hello_world/api_integration/user_info_page.dart';
import 'package:hello_world/api_integration/user_info_post_page.dart';
import 'package:hello_world/banners.dart';
import 'package:hello_world/navigation_example_detail_page.dart';
import 'package:hello_world/grid_view_example.dart';
import 'package:hello_world/navigation_example_page.dart';
import 'package:hello_world/radio_example.dart';
import 'package:hello_world/routes.dart';
import 'package:hello_world/scrollview.dart';
import 'package:hello_world/sizedbox_container_padding.dart';
import 'package:hello_world/text_form_field_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const UserInfoListPage(),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 1,
        shadowColor: Colors.black,
        title: Text(widget.title),
        actions: const [
          Text('Action 1'),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _incrementCounter();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  'Click here',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        //backgroundColor: WidgetStateProperty.all(Colors.green),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Outlined Btn",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        //backgroundColor: WidgetStateProperty.all(Colors.green),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Outlined Btn",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        //backgroundColor: WidgetStateProperty.all(Colors.green),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Outlined Btn",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        //backgroundColor: WidgetStateProperty.all(Colors.green),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Outlined Btn",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ))
                ],
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    //backgroundColor: WidgetStateProperty.all(Colors.green),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Outlined Btn",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )),
              OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    //backgroundColor: WidgetStateProperty.all(Colors.green),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Outlined Btn",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )),
              IconButton(
                splashColor: Colors.yellow,
                icon: const Icon(Icons.code),
                color: Colors.green,
                onPressed: () {},
              ),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    //backgroundColor: WidgetStateProperty.all(Colors.green),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Text Button",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text(
                'Hello World',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.diversity_1),
      ),
    );
  }
}

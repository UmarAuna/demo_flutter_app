import 'package:flutter/material.dart';
import 'package:hello_world/grid_view_example.dart';
import 'package:hello_world/items_class.dart';

class NavigationExampleDetailPage extends StatefulWidget {
  final ItemsClass? itemsClass;
  final String? userName;
  const NavigationExampleDetailPage(
      {super.key, this.itemsClass, this.userName});

  @override
  State<NavigationExampleDetailPage> createState() =>
      _NavigationExampleDetailPageState();
}

class _NavigationExampleDetailPageState
    extends State<NavigationExampleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //title: const Text('Beginners'),
          title: Text(widget.itemsClass?.title ?? ''),
        ),
        body: Center(
          child: Column(
            children: [
              Text(widget.userName ?? ''),
              const SizedBox(height: 10),
              Text(widget.itemsClass?.description ?? ''),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewExample()),
                  );
                  //Navigator.pop(context);
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //color: Colors.redAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.redAccent,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_alert,
                        size: 50,
                      ),
                      Text('Beginners'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //color: Colors.redAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 200, bottom: 10, top: 10),
                          color: Colors.redAccent,
                          child: const Text('RED')),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 200, bottom: 10, top: 10),
                          color: Colors.green,
                          child: const Text('GREEN')),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 200, bottom: 10, top: 10),
                          color: Colors.blue,
                          child: const Text('BLUE')),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 200, bottom: 10, top: 10),
                          color: Colors.yellow,
                          child: const Text('YELLOW')),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

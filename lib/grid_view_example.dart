import 'package:flutter/material.dart';
import 'package:hello_world/items_class.dart';
import 'package:hello_world/navigation_example_page.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> items = ['Item 4', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  List<ItemsClass> itemsClass = [
    ItemsClass(
        title: "RED",
        image: 'assets/images/image_background.jpg',
        color: Colors.red,
        description: ''),
    ItemsClass(
        title: "GREEN",
        image: 'assets/images/image_background.jpg',
        color: Colors.green,
        description: ''),
    ItemsClass(
        title: "BLUE",
        image: 'assets/images/image_background.jpg',
        color: Colors.blue,
        description: ''),
    ItemsClass(
        title: "YELLOW",
        image: 'assets/images/image_background.jpg',
        color: Colors.yellow,
        description: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('TextFormField'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  NavigationExamplePage.id,
                  (Route<dynamic> route) => false,
                );

                /*   Navigator.pushReplacementNamed(
                        context, NavigationExamplePage.id) */
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationExamplePage()),
                );
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
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: const EdgeInsets.all(8.0), // padding around the grid
                itemCount: itemsClass.length, // total number of items
                itemBuilder: (context, index) {
                  final item = itemsClass[index];
                  return Container(
                    color: item.color, // color of grid items
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                          Image.asset(item.image),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )

            /* Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    5,
                    (index) {
                      return Container(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(10),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('assets/images/image_background.jpg'),
                              Text(
                                'Item $index',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            ) */
          ],
        ));
  }
}

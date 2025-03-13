import 'package:flutter/material.dart';
import 'package:hello_world/navigation_example_detail_page.dart';
import 'package:hello_world/items_class.dart';

class NavigationExamplePage extends StatefulWidget {
  static const id = 'navigation_example_page';
  const NavigationExamplePage({super.key});

  @override
  State<NavigationExamplePage> createState() => _NavigationExamplePageState();
}

class _NavigationExamplePageState extends State<NavigationExamplePage> {
  final userNameController = TextEditingController();
  List<ItemsClass> items = [
    ItemsClass(
      title: "RED",
      image: 'assets/images/image_background.jpg',
      color: Colors.red,
      description: 'This is a red color',
    ),
    ItemsClass(
      title: "GREEN",
      image: 'assets/images/image_background.jpg',
      color: Colors.green,
      description: 'This is a green color',
    ),
    ItemsClass(
      title: "BLUE",
      image: 'assets/images/image_background.jpg',
      color: Colors.blue,
      description: 'This is a blue color',
    ),
    ItemsClass(
      title: "YELLOW",
      image: 'assets/images/image_background.jpg',
      color: Colors.yellow,
      description: 'This is a yellow color',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationExamplePage'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationExampleDetailPage(
                                itemsClass: item,
                              )),
                    );
                  },
                  child: ListTile(
                    title: Text(items[index].title),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.blue),
              onChanged: (value) {
                print('Text changed: $value');
              },
              //maxLength: 10,
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                icon: Icon(Icons.person),
                //border: UnderlineInputBorder(),
                border: OutlineInputBorder(),
                //prefixIcon: Icon(Icons.person),
                //suffixIcon: Icon(Icons.remove_red_eye),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                } else if (value.length < 5) {
                  return 'Please enter at least 5 characters';
                }
                return null; // Return null if the input is valid
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NavigationExampleDetailPage(
                          userName: userNameController.text,
                        )),
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
          const Text(
            'NavigationExamplePage is working',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

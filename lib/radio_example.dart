import 'package:flutter/material.dart';
import 'package:hello_world/colors_enum.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  List<String> items = ['Item 4', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  ColorsEnum colorsEnum = ColorsEnum.red;
  String colorType = '';
  Color setColor() {
    if (colorsEnum == ColorsEnum.red) {
      return Colors.red;
    } else if (colorsEnum == ColorsEnum.green) {
      return Colors.green;
    } else if (colorsEnum == ColorsEnum.blue) {
      return Colors.blue;
    } else {
      return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('TextFormField'),
        ),
        body: Container(
          color: setColor(),
          child: Column(children: [
            ListTile(
                title: const Text('Red'),
                leading: Radio(
                  value: ColorsEnum.red,
                  groupValue: colorsEnum,
                  onChanged: (value) {
                    setState(() {
                      colorsEnum = value!;
                    });
                  },
                )),
            ListTile(
                title: const Text('Green'),
                leading: Radio(
                  value: ColorsEnum.green,
                  groupValue: colorsEnum,
                  onChanged: (value) {
                    setState(() {
                      colorsEnum = value!;
                    });
                  },
                )),
            ListTile(
                title: const Text('Blue'),
                leading: Radio(
                  value: ColorsEnum.blue,
                  groupValue: colorsEnum,
                  onChanged: (value) {
                    setState(() {
                      colorsEnum = value!;
                    });
                  },
                )),
            ListTile(
                title: const Text('Yellow'),
                leading: Radio(
                  value: ColorsEnum.yellow,
                  groupValue: colorsEnum,
                  onChanged: (value) {
                    setState(() {
                      colorsEnum = value!;
                    });
                  },
                )),
            Expanded(
              child: ListView(
                children: const [
                  Text(
                    'Yellow',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Yellow',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Yellow',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
          ]),
        ));
  }
}

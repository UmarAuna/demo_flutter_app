import 'package:flutter/material.dart';
import 'package:hello_world/banners_detail_page.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final userNameController = TextEditingController();
  final fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Banners'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.blue),
              //maxLength: 10,
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: fullNameController,
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.blue),
              //maxLength: 10,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                hintText: 'Enter your fullname',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BannersDetailPage(
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
        ],
      ),
    );
  }
}

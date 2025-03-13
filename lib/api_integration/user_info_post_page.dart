import 'package:flutter/material.dart';
import 'package:hello_world/api_integration/dio_client.dart';
import 'package:hello_world/api_integration/user_info_body.dart';

class UserInfoPostPage extends StatefulWidget {
  const UserInfoPostPage({super.key});

  @override
  State<UserInfoPostPage> createState() => _UserInfoPostPageState();
}

class _UserInfoPostPageState extends State<UserInfoPostPage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  final dioClient = DioClient();
  bool isLoading = false;

  Future<void> submitData(String name, String job) async {
    setState(() {
      isLoading = true;
    });

    final response =
        await dioClient.createUser(UserInfoBody(name: name, job: job));

    var snackBar = SnackBar(
        content: Text(
            'Name: ${response?.name} - Job: ${response?.job} CreatedAt ${response?.createdAt}'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    setState(() {
      isLoading = false;
    });

    //await dioClient.createUser(nameController.text, jobController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UserInfoPostPage'),
        ),
        body: Column(children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Enter Name'),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: jobController,
            decoration: const InputDecoration(labelText: 'Enter Job'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                submitData(nameController.text, jobController.text);
              },
              child: Text(isLoading == true ? 'Loading...' : 'Submit'))
        ]));
  }
}

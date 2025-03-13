import 'package:flutter/material.dart';
import 'package:hello_world/api_integration/dio_client.dart';
import 'package:hello_world/api_integration/user_info_body.dart';
import 'package:hello_world/api_integration/user_info_list_response.dart';

class UserInfoPage extends StatefulWidget {
  final Data user;
  const UserInfoPage({super.key, required this.user});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  bool isLoading = false;
  final DioClient client = DioClient();

  Future<void> submitData(String name, String job) async {
    setState(() {
      isLoading = true;
    });

    final response = await client.updateUser(
        widget.user.id!, UserInfoBody(name: name, job: job));

    var snackBar = SnackBar(
        content: Text(
            'Name: ${response?.name} - Job: ${response?.job} UpdatedAt ${response?.updatedAt}'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    setState(() {
      isLoading = false;
    });

    //await dioClient.createUser(nameController.text, jobController.text);
  }
  //client.getUser('2');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserInfoPage'),
      ),
      body: Center(
        child: FutureBuilder(
            future: client.getUser(widget.user.id.toString()),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                final user = snapshot.data;
                return Column(
                  children: [
                    Image.network('${user?.data?.avatar}'),
                    const SizedBox(height: 10.0),
                    Text('${user?.data?.firstName} ${user?.data?.lastName}'),
                    const SizedBox(height: 10.0),
                    Text('${user?.data?.email}'),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: nameController,
                      decoration:
                          const InputDecoration(labelText: 'Enter Name'),
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
                        child: const Text('Click here'))
                  ],
                );
              } else {
                return const Center(child: Text('No data found'));
              }
            })

        /* FutureBuilder(
          future: client.getUser('5'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final user = snapshot.data!;
              return Column(
                children: [
                  Image.network(user.data?.avatar ?? ''),
                  const SizedBox(height: 8.0),
                  Text(
                    '${user.data?.firstName} ${user.data?.lastName}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    user.data?.email ?? '',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              );
            } else {
              return const Center(child: Text('No data found'));
            }
          },
        ) */
        ,
      ),
    );
  }
}

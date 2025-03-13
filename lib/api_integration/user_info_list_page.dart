import 'package:flutter/material.dart';
import 'package:hello_world/api_integration/dio_client.dart';
import 'package:hello_world/api_integration/user_info_page.dart';

class UserInfoListPage extends StatefulWidget {
  const UserInfoListPage({super.key});

  @override
  State<UserInfoListPage> createState() => _UserInfoListPageState();
}

class _UserInfoListPageState extends State<UserInfoListPage> {
  final DioClient client = DioClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserInfoPage'),
      ),
      body: Center(
        child: FutureBuilder(
            future: client.getUserList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                final users = snapshot.data;
                return ListView.builder(
                  itemCount: users?.data?.length,
                  itemBuilder: (context, index) {
                    final user = users?.data?[index];
                    return ListTile(
                      leading: Image.network('${user?.avatar}'),
                      title: Text('${user?.firstName} ${user?.lastName}'),
                      subtitle: Text('${user?.email}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserInfoPage(user: user!)),
                        );
                      },
                    );
                  },
                );
              } else {
                return const Center(child: Text('No data found'));
              }
            }),
      ),
    );
  }
}

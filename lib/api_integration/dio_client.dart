import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/api_integration/user_info_body.dart';
import 'package:hello_world/api_integration/user_info_list_response.dart';
import 'package:hello_world/api_integration/user_info_response.dart';
import 'package:hello_world/api_integration/user_info_response_put.dart';
import 'package:hello_world/api_integration/userinfo.dart';

class DioClient {
  final Dio dio = Dio();

  final baseUrl = 'https://reqres.in/api';

//This method will be used to get  users info
  Future<UserInfo> getUser(String id) async {
    // Perform GET request to the endpoint "/users/<id>"
    Response userData = await dio.get('$baseUrl/users/$id');

    // Prints the raw data returned by the server
    //debugPrint('User Info: ${userData.data}');

    // Parsing the raw JSON data to the User class
    UserInfo user = UserInfo.fromJson(userData.data);

    debugPrint('Users FirstName: ${user.data?.firstName}');
    debugPrint('Users LastName: ${user.data?.lastName}');
    debugPrint('Users Email: ${user.data?.email}');
    debugPrint('Users Support: ${user.support?.text}');

    return user;
  }

  //This method will be used to create a new user
  Future<UserInfoResponse?> createUser(UserInfoBody userInfoBody) async {
    UserInfoResponse? retrievedUser;

    Response response = await dio.post(
      '$baseUrl/users',
      options: Options(headers: {
        'Content-Type': 'application/json',
      }),
      data: UserInfoBody(name: userInfoBody.name, job: userInfoBody.job),
    );

    debugPrint('User created: ${response.data}');

    retrievedUser = UserInfoResponse.fromJson(response.data);

    return retrievedUser;
  }

  //This method will return list of users
  Future<UserInfoListResponse> getUserList() async {
    // Perform GET request to the endpoint "/users"
    Response? response;
    try {
      response = await dio.get('$baseUrl/users');
      if (response.statusCode == 201) {
        debugPrint('User Info: ${response.data}');
        return UserInfoListResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      debugPrint('Error ${e.toString()}');
    }
    return UserInfoListResponse.fromJson(response?.data);
  }

  Future<UserInfoResponsePut?> updateUser(
      int id, UserInfoBody userInfoBody) async {
    UserInfoResponsePut? retrievedUser;

    try {
      Response response = await dio.put(
        '$baseUrl/users/$id',
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: UserInfoBody(name: userInfoBody.name, job: userInfoBody.job),
      );

      if (response.statusCode == 200) {
        debugPrint('User updated: ${response.data}');
        retrievedUser = UserInfoResponsePut.fromJson(response.data);
      } else {
        throw Exception('Failed to update user');
      }
      //retrievedUser = UserInfoResponsePut.fromJson(response.data);
    } catch (e) {
      debugPrint('Error: $e');
    }

    return retrievedUser;
  }
}

import 'package:dio/dio.dart';

import 'user.dart';

class DataService {
  final Dio dio = Dio();
  final String baseUrl = 'https://reqres.in/api/';

  Future getUsers() async {
    try {
      final response = await dio.get('${baseUrl}users');

      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserCreate?> postUser(UserCreate user) async {
    try {
      final response = await dio.post('${baseUrl}users',
       data: user.toMap(), 
      );

      if (response.statusCode == 201) {
        return UserCreate.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserUpdate?> putUser(String idUser, UserUpdate user) async {
  try {
    final response = await dio.put(
      '${baseUrl}users/$idUser',
      data: user.toMap(),
    );

    if (response.statusCode == 200) {
      return UserUpdate.fromJson(response.data);
    } else {
      return null;
    }
  } catch (e) {
    rethrow;
  }
}


  Future deleteUser(String idUser) async {
    try {
      final response = await dio.delete('${baseUrl}users/$idUser');

      if (response.statusCode == 204) {
        return 'Delete data berhasil';
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Iterable<User>?> getUserModel() async {
    try {
      var response = await dio.get('${baseUrl}users');

      if (response.statusCode == 200) {
        final users = (response.data['data'] as List)
            .map((user) => User.fromJson(user))
            .toList();

        return users;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:flutter/material.dart';

import '../../modules/home/data_source/home_local_data_source.dart';
import '../../modules/home/model/user_data.dart';

class UserDataController extends ChangeNotifier {
  final HomeLocalDataSource localDataSource;

  UserDataController(this.localDataSource);

  Future<UserData?> getUserData() async {
    return await localDataSource.getUserData();
  }
}

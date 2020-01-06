import 'package:flutter/material.dart';
import 'package:ramdev/models/user.dart';
import 'ramdev_home/home.dart';
import 'auth/auth.dart';
import 'package:provider/provider.dart';

class AuthChecker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // dynamic isLoggedIn = user == null ? Auth() : Home();

    if (user == null) {
      return Auth();
    } else {
      return Home();
    }
  }
}

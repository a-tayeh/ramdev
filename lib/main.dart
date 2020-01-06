// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:ramdev/auth_checker.dart';
import 'package:provider/provider.dart';
import 'package:ramdev/models/user.dart';
import 'services/auth_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      child: AuthChecker(),
      value: AuthService().user,
    );
  }
}

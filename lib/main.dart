import 'package:flutter/material.dart';
import 'package:pratica_flutter/provider/users.dart';
import 'package:pratica_flutter/routes/app_routes.dart';
import 'package:pratica_flutter/views/user_form.dart';
import 'package:pratica_flutter/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (ctx) => Users())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserList(),
        routes: {
          AppRoutes.USER_FORM: (_) => UserForm()
        }
      ),
    );
  }
}


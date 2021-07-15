import 'package:flutter/material.dart';
import 'package:pratica_flutter/components/user_tile.dart';
import 'package:pratica_flutter/models/user.dart';
import 'package:pratica_flutter/provider/users.dart';
import 'package:pratica_flutter/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM
                );
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
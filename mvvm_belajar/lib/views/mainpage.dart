import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_belajar/blocs/user_bloc.dart';
import 'package:mvvm_belajar/models/user.dart';
import 'package:mvvm_belajar/views/user_card.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Demo MVVM"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: (() {
                bloc.add(random.nextInt(10) + 1);
              }),
              child: Text("Pick Random User")),
          BlocBuilder<UserBloc, User>(
              builder: (context, user) =>
                  (user is UninitializedUser) ? Container() : UserCard(user))
        ],
      ),
    );
  }
}

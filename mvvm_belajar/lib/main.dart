import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_belajar/views/mainpage.dart';
import 'package:mvvm_belajar/blocs/user_bloc.dart';

import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserBloc(UninitializedUser()),
        child: MainPage(),
      ),
    );
  }
}

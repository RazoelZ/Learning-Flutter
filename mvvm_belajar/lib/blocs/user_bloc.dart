import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_belajar/models/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(super.initialState);

  User get initialState => UninitializedUser();

  Stream<User> mapEventToState(int event) async* {
    User user = await User.getUserFromAPI(event);
    yield user;
  }
}

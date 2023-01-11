import 'dart:ffi';

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return ((context) async {
    //code before request is handled.

    print("Saving name (${context.request.url}) to database");
    final response = await handler.call(context); //handler(context);

    // code after request is handled.
    print("Making new Response")
    final newresponse =
        response.copyWith(body: '${await response.body()} How are you');
    return newresponse;
  });
}

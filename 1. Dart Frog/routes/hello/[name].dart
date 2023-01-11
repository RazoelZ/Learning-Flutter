import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context, String name) async {
  print(context.request.method);
  print('URI : ${context.request.uri}');
  print('URL : ${context.request.url}');
  print('body : ${await context.request.body()}');

  print('Request is handled.');
  return Response(body: 'Welcome to Dart Frog! $name');
}

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/repository/user_repo.dart';

Future<Response> onRequest(RequestContext context) async {
  return _updateUser(context);
}

Future<Response> _updateUser(RequestContext context) async {
  // * Check Method
  if (context.request.method != HttpMethod.post) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }

  final userRepo = context.read<UserRepo>();
  final data = await context.request.json() as Map<String, dynamic>;

  final id = data['id'] as int?;
  final name = data['name'] as String?;
  final email = data['email'] as String?;
  final password = data['password'] as String?;

  if (id == null) {
    return Response.json(
      body: {
        'status': HttpStatus.badRequest,
        'info': 'Please input user id!',
      },
    );
  }

  final updatedUser = await userRepo.updateUser(
    id: id,
    name: name,
    email: email,
    password: password,
  );

  return Response.json(
    body: {
      'status': HttpStatus.ok,
      'info': 'success',
      'data': {
        'id': updatedUser?.id,
        'name': updatedUser?.name,
        'email': updatedUser?.email,
      }
    },
  );
}

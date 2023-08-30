import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/repository/auth_repo.dart';

Future<Response> onRequest(RequestContext context) async {
  return _listUser(context);
}

Future<Response> _listUser(RequestContext context) async {
  final authRepo = context.read<AuthRepo>();

  if (context.request.method != HttpMethod.post) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }

  final data = await context.request.json() as Map<String, dynamic>;
  final email = data['email'] as String?;
  final password = data['password'] as String?;

  final auth = await authRepo.login(email: email!, password: password!);

  if (auth == null) {
    return Response.json(
      body: {
        'status': HttpStatus.badRequest,
        'info': 'No User Found',
      },
    );
  } else {
    final authUser = await authRepo.getUserFromToken(auth.accessToken);
    return Response.json(
      body: {
        'status': HttpStatus.ok,
        'info': 'success',
        'accessToken': auth.accessToken,
        'userInfo': {
          'id': authUser?.id,
          'name': authUser?.name,
          'email': authUser?.email,
        }
      },
    );
  }
}

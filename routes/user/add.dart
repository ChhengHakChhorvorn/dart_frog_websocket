import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/helper/auth.dart';
import 'package:my_project/repository/user_repo.dart';

Future<Response> onRequest(RequestContext context) async {
  return _addUser(context);
}

Future<Response> _addUser(RequestContext context) async {
  final userRepo = context.read<UserRepo>();
  if (context.request.method != HttpMethod.post) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }
  final data = await context.request.json() as Map<String, dynamic>;
  final name = data['name'] as String?;
  final email = data['email'] as String?;
  final password = data['password'] as String?;

  if (name == null || email == null || password == null) {
    return Response.json(
      body: {
        'status': HttpStatus.badRequest,
        'info': 'Missing Informations',
      },
    );
  }

  final userList = await userRepo.getAll();

  if (userList.any((element) => element.email.toLowerCase() == email.toLowerCase())) {
    return Response.json(
      body: {
        'status': HttpStatus.conflict,
        'info': 'User Already Exist!',
      },
    );
  }

  final encryptedPassword = encryptMyData(password);

  final user = await userRepo.createUser(name: name, email: email, password: encryptedPassword);

  return Response.json(
    body: {
      'status': 200,
      'info': 'User has been saved!!!',
      'user': {
        'name': user?.name,
        'email': user?.email,
      },
    },
  );
}

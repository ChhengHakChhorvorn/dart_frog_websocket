import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/repository/user_repo.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  // * Check Method
  if (context.request.method != HttpMethod.post) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }

  final userRepo = context.read<UserRepo>();

  final deletedUser = await userRepo.deleteUser(id: int.parse(id));
  if (deletedUser == null) {
    return Response.json(
      body: {
        'status': HttpStatus.badRequest,
        'info': 'No Data Found',
      },
    );
  }
  return Response.json(
    body: {
      'status': HttpStatus.ok,
      'info': 'success',
    },
  );
}

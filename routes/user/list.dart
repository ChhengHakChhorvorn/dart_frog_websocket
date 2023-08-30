import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return _listUser(context);
}

Future<Response> _listUser(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final userList = (await prisma.user.findMany()).toList();
  final authUser = context.read<User>();

  if (context.request.method != HttpMethod.get) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }

  return Response.json(
    body: {
      'status': HttpStatus.ok,
      'info': 'success',
      'data': userList
          .map((e) => {
                'id': e.id,
                'name': e.name,
                'email': e.email,
              })
          .toList(),
    },
  );
}

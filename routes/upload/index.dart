import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

Future<Response> onRequest(RequestContext context) async {
  return _upload(context);
}

Future<Response> _upload(RequestContext context) async {
  final request = await context.request.formData();
  final file = request.files['image'];

  if (context.request.method != HttpMethod.post) {
    return Response(
      body: 'Wrong method bruhhh',
      statusCode: HttpStatus.badRequest,
    );
  }

  if (file == null) {
    return Response.json(
      body: {
        'status': HttpStatus.badRequest,
        'info': 'No File Selected',
      },
    );
  }

  var savedFilePath = '';
  final dir = Directory(r'D:\LearnFlutter\dart_frog\my_project\public\images');
  final filePath = '${dir.path}\\${const Uuid().v4()}.${file.contentType.toString().split('/').last}';
  final fileDef = File(filePath);
  await fileDef.create(recursive: true);
  final bytes = await file.readAsBytes();
  await fileDef.writeAsBytes(bytes);
  savedFilePath = filePath;
  final uploadedFileName = '/images/${savedFilePath.split(r'\').last}';

  return Response.json(
    body: {
      'status': HttpStatus.ok,
      'info': 'success',
      'filePath': uploadedFileName,
    },
  );
}

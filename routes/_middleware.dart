import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/_middleware.dart';
import 'package:my_project/bloc/chat_cubit.dart';
import 'package:my_project/repository/auth_repo.dart';
import 'package:my_project/repository/chat_repo.dart';
import 'package:my_project/repository/user_repo.dart';
import 'package:my_project/src/generated/prisma/prisma_client.dart';

final _prisma =
    PrismaClient(datasources: const Datasources(db: 'mysql://root:@localhost:3306/mydb?schema=public'));
final authRepo = AuthRepo(_prisma);
final chatCubit = ChatCubit();
final chatRepo = ChatRepo(_prisma);
final userRepo = UserRepo(_prisma);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(_provideDb())
      .use(_provideUserRepo())
      .use(_provideAuthRepo())
      .use(counterProvideBloc())
      .use(_provideChatCubit())
      .use(_provideChatRepo());
}

Middleware _provideDb() => provider<PrismaClient>(
      (context) => _prisma,
    );

Middleware _provideAuthRepo() => provider<AuthRepo>((context) => authRepo);

Middleware _provideChatRepo() => provider<ChatRepo>((context) => chatRepo);

Middleware _provideChatCubit() => provider<ChatCubit>((context) => chatCubit);

Middleware _provideUserRepo() => provider<UserRepo>((context) => userRepo);

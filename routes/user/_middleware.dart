import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:my_project/bloc/chat_cubit.dart';
import 'package:my_project/repository/auth_repo.dart';
import 'package:my_project/repository/user_repo.dart';
import 'package:my_project/src/generated/prisma/prisma_client.dart';

final _prisma =
    PrismaClient(datasources: const Datasources(db: 'mysql://root:@localhost:3306/mydb?schema=public'));

final userRepo = UserRepo(_prisma);
final authRepo = AuthRepo(_prisma);
final chatCubit = ChatCubit();

Handler middleware(Handler handler) {
  return handler
      .use(_provideTokenAuth())
      .use(requestLogger())
      .use(_provideDb())
      .use(_provideUserRepo())
      .use(_provideChatCubit());
}

Middleware _provideDb() => provider<PrismaClient>(
      (context) => _prisma,
    );

Middleware _provideUserRepo() => provider<UserRepo>((context) => userRepo);

Middleware _provideTokenAuth() {
  return bearerAuthentication<User>(userFromToken: authRepo.getUserFromToken);
}

Middleware _provideChatCubit() => provider<ChatCubit>((context) => chatCubit);

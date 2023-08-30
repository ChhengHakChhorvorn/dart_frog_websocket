import 'package:my_project/helper/auth.dart';
import 'package:my_project/src/generated/prisma/prisma_client.dart';

class AuthRepo {
  final PrismaClient _db;

  AuthRepo(this._db);

  Future<Authentication?> login({required String email, required String password}) async {
    final userList = (await _db.user.findMany()).toList();
    bool access = false;
    User? loggedUser;

    Authentication? auth;

    userList.forEach((element) {
      if (element.email.toLowerCase() == email.toLowerCase() && decryptMyData(element.password) == password) {
        access = true;
        loggedUser = element;
      } else {
        return;
      }
    });

    if (access) {
      final existUserAuth = (await _db.authentication.findMany(
        where: AuthenticationWhereInput(
          userId: IntFilter(equals: loggedUser?.id),
        ),
      ))
          .toList();
      if (existUserAuth.isNotEmpty) {
        auth = await _db.authentication.update(
          data: AuthenticationUpdateInput(
            accessToken: StringFieldUpdateOperationsInput(
              set: encryptMyData(
                DateTime.now().toString(),
              ),
            ),
            expireDate: DateTimeFieldUpdateOperationsInput(
              set: DateTime.now().add(
                const Duration(days: 1),
              ),
            ),
          ),
          where: AuthenticationWhereUniqueInput(id: existUserAuth[0].id),
        );
      } else {
        auth = await _db.authentication.create(
          data: AuthenticationCreateInput(
            userId: loggedUser!.id,
            accessToken: encryptMyData(DateTime.now().toString()),
            expireDate: DateTime.now().add(
              const Duration(days: 1),
            ),
          ),
        );
      }
      return auth;
    }
    return null;
  }

  Future<User?> getUserFromToken(String token) async {
    final authList = (await _db.authentication.findMany(
      where: AuthenticationWhereInput(
        expireDate: DateTimeFilter(
          gt: DateTime.now(),
        ),
      ),
    ))
        .toList();
    User? authUser;
    for (final element in authList) {
      if (element.accessToken == token) {
        authUser = await _db.user.findFirst(
          where: UserWhereInput(
            id: IntFilter(equals: element.userId),
          ),
        );
      }
    }
    return authUser;
  }
}

import '../src/generated/prisma/prisma_client.dart';

class UserRepo {
  UserRepo(this._db);

  final PrismaClient _db;

  Future<User?> createUser({
    required String name,
    required String email,
    required String password,
  }) async {
    final user = await _db.user.create(
      data: UserCreateInput(
        name: name,
        email: email,
        password: password,
      ),
    );
    return user;
  }

  Future<User?> getById({required int id}) async {
    final user = await _db.user.findFirst(
      where: UserWhereInput(
        id: IntFilter(
          equals: id,
        ),
      ),
    );

    return user;
  }

  Future<List<User>> getAll() async {
    final userList = (await _db.user.findMany()).toList();

    return userList;
  }

  Future<User?> updateUser({
    required int id,
    String? name,
    String? email,
    String? password,
  }) async {
    final user = await getById(id: id);
    if (user == null) return null;

    final updatedUser = await _db.user.update(
      data: UserUpdateInput(
        name: StringFieldUpdateOperationsInput(set: name ?? user.name),
        email: StringFieldUpdateOperationsInput(set: email ?? user.email),
        password: StringFieldUpdateOperationsInput(set: password ?? user.password),
      ),
      where: UserWhereUniqueInput(id: id),
    );

    return updatedUser;
  }

  Future<User?> deleteUser({required int id}) async {
    User? data;
    try {
      data = await _db.user.delete(where: UserWhereUniqueInput(id: id));
    } catch (e) {
      return null;
    }
    return data;
  }
}

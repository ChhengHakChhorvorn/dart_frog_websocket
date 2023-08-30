import '../model/chat_model.dart';
import '../src/generated/prisma/prisma_client.dart';

class ChatRepo {
  final PrismaClient _db;

  ChatRepo(this._db);

  Future<Chat> initChat({required int receiverId, required int senderId}) async {
    List<int> ids = [receiverId, senderId];
    ids.sort();
    String chatName = ids.join("&");
    final chatRoom = await _db.chat.findFirst(where: ChatWhereInput(name: StringFilter(equals: chatName)));
    if (chatRoom != null) {
      return chatRoom;
    } else {
      final chatRoom = await _db.chat.create(
        data: ChatCreateInput(
          name: chatName,
          createdDate: DateTime.now(),
        ),
      );
      return chatRoom;
    }
  }

  Future<List<Conversation>> getConversations({required Chat chatRoom}) async {
    final conversations = (await _db.conversation.findMany(
      where: ConversationWhereInput(chatId: IntFilter(equals: chatRoom.id)),
    ))
        .toList();

    return conversations;
  }

  Future<Conversation> sendMessage({required ChatModel chat, required Chat chatRoom}) async {
    final conversation = await _db.conversation.create(
      data: ConversationCreateInput(
        message: chat.message,
        sentDate: DateTime.parse(chat.dateTime),
        chat: ChatCreateNestedOneWithoutConversationInput(connect: ChatWhereUniqueInput(id: chatRoom.id)),
        sender: UserCreateNestedOneWithoutSendChatsInput(connect: UserWhereUniqueInput(id: chat.senderId)),
        receiver: UserCreateNestedOneWithoutReceiveChatsInput(
          connect: UserWhereUniqueInput(id: chat.receiverId),
        ),
      ),
    );

    return conversation;
  }
}

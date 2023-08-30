import 'dart:convert';

import 'package:broadcast_bloc/broadcast_bloc.dart';
import 'package:my_project/repository/user_repo.dart';

import '../model/chat_model.dart';
import '../src/generated/prisma/prisma_client.dart';

class ChatCubit extends BroadcastCubit<String> {
  ChatCubit() : super("");

  void getAllMessage({
    required List<Conversation> conversations,
    required UserRepo userRepo,
  }) async {
    // final allChats = conversations.map(
    //   (e) {
    //     return ChatModel(
    //       senderId: e.senderId,
    //       senderName: "",
    //       senderEmail: "",
    //       receiverId: e.receiverId,
    //       receiverName: "",
    //       receiverEmail: "",
    //       message: e.message,
    //       dateTime: e.sentDate.toString(),
    //     );
    //   },
    // ).toList();

    final List<ChatModel> allChats = [];

    for (var element in conversations) {
      final sender = await userRepo.getById(id: element.senderId);
      final receiver = await userRepo.getById(id: element.receiverId);
      final chat = ChatModel(
        senderId: sender!.id,
        senderName: sender.name,
        senderEmail: sender.email,
        receiverId: receiver!.id,
        receiverName: receiver.name,
        receiverEmail: receiver.email,
        message: element.message,
        dateTime: element.sentDate.toString(),
      );
      allChats.add(chat);
    }
    allChats.sort((a, b) => DateTime.parse(a.dateTime).compareTo(DateTime.parse(b.dateTime)));
    emit(jsonEncode(allChats));
  }
}

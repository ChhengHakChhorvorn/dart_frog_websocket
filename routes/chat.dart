import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:my_project/bloc/chat_cubit.dart';
import 'package:my_project/model/chat_model.dart';
import 'package:my_project/repository/chat_repo.dart';
import 'package:my_project/repository/user_repo.dart';

final Map<String, List<WebSocketChannel>> _channelsRoom = {};

Future<Response> onRequest(RequestContext context) async {
  final params = context.request.uri.queryParameters;
  final senderId = int.parse(params['senderId'] ?? '0');
  final receiverId = int.parse(params['receiverId'] ?? '0');
  final chatRepo = context.read<ChatRepo>();
  final userRepo = context.read<UserRepo>();
  final chatRoom = await chatRepo.initChat(receiverId: receiverId, senderId: senderId);
  final conversations = await chatRepo.getConversations(chatRoom: chatRoom);

  final handler = webSocketHandler(
    (channel, protocol) async {
      // * A new client has connected to our server.
      // * Subscribe the new client to receive notifications
      // * whenever the cubit state changes.
      final cubit = context.read<ChatCubit>()..subscribe(channel);
      // * Send the current count to the new client.
      cubit.getAllMessage(conversations: conversations, userRepo: userRepo);
      // * Listen for messages from the client.
      channel.stream.listen(
        (event) async {
          final data = jsonDecode(event as String);
          final chat = ChatModel.fromJson(data as Map<String, dynamic>);
          await chatRepo.sendMessage(chat: chat, chatRoom: chatRoom);
          final newConversations = await chatRepo.getConversations(chatRoom: chatRoom);
          cubit.getAllMessage(conversations: newConversations, userRepo: userRepo);
        },
        // * The client has disconnected so unsubscribe the channel.
        onDone: () {
          print("Disconnected");
          cubit.unsubscribe(channel);
        },
      );
    },
  );
  return handler(context);
}

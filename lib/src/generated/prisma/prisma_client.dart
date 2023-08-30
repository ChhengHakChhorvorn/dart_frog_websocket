// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  email,
  name,
  password;

  @override
  String? get originalName => null;
}

enum AuthenticationScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('user_id')
  userId(r'user_id'),
  @JsonValue('access_token')
  accessToken(r'access_token'),
  @JsonValue('expire_date')
  expireDate(r'expire_date');

  const AuthenticationScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum ChatScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  @JsonValue('created_date')
  createdDate(r'created_date');

  const ChatScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum ConversationScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('chat_id')
  chatId(r'chat_id'),
  @JsonValue('sender_id')
  senderId(r'sender_id'),
  @JsonValue('receiver_id')
  receiverId(r'receiver_id'),
  message,
  @JsonValue('sent_date')
  sentDate(r'sent_date');

  const ConversationScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? email;

  final StringFilter? name;

  final StringFilter? password;

  @JsonKey(name: r'send_chats')
  final ConversationListRelationFilter? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationListRelationFilter? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @JsonKey(name: r'send_chats')
  final ConversationOrderByRelationAggregateInput? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationOrderByRelationAggregateInput? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({this.id});

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UserAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? email;

  final StringWithAggregatesFilter? name;

  final StringWithAggregatesFilter? password;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationWhereInput implements _i1.JsonSerializable {
  const AuthenticationWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationWhereInputFromJson(json);

  final Iterable<AuthenticationWhereInput>? AND;

  final Iterable<AuthenticationWhereInput>? OR;

  final Iterable<AuthenticationWhereInput>? NOT;

  final IntFilter? id;

  @JsonKey(name: r'user_id')
  final IntFilter? userId;

  @JsonKey(name: r'access_token')
  final StringFilter? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeFilter? expireDate;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationWhereInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationOrderByWithRelationInput implements _i1.JsonSerializable {
  const AuthenticationOrderByWithRelationInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @JsonKey(name: r'access_token')
  final SortOrder? accessToken;

  @JsonKey(name: r'expire_date')
  final SortOrder? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationWhereUniqueInput implements _i1.JsonSerializable {
  const AuthenticationWhereUniqueInput({this.id});

  factory AuthenticationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const AuthenticationOrderByWithAggregationInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AuthenticationOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @JsonKey(name: r'access_token')
  final SortOrder? accessToken;

  @JsonKey(name: r'expire_date')
  final SortOrder? expireDate;

  @JsonKey(name: r'_count')
  final AuthenticationCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AuthenticationAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AuthenticationMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AuthenticationMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AuthenticationSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const AuthenticationScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AuthenticationScalarWhereWithAggregatesInput>? AND;

  final Iterable<AuthenticationScalarWhereWithAggregatesInput>? OR;

  final Iterable<AuthenticationScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  @JsonKey(name: r'user_id')
  final IntWithAggregatesFilter? userId;

  @JsonKey(name: r'access_token')
  final StringWithAggregatesFilter? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeWithAggregatesFilter? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ChatWhereInput implements _i1.JsonSerializable {
  const ChatWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.createdDate,
    this.conversation,
  });

  factory ChatWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ChatWhereInputFromJson(json);

  final Iterable<ChatWhereInput>? AND;

  final Iterable<ChatWhereInput>? OR;

  final Iterable<ChatWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? name;

  @JsonKey(name: r'created_date')
  final DateTimeFilter? createdDate;

  final ConversationListRelationFilter? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatWhereInputToJson(this);
}

@_i1.jsonSerializable
class ChatOrderByWithRelationInput implements _i1.JsonSerializable {
  const ChatOrderByWithRelationInput({
    this.id,
    this.name,
    this.createdDate,
    this.conversation,
  });

  factory ChatOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$ChatOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  @JsonKey(name: r'created_date')
  final SortOrder? createdDate;

  final ConversationOrderByRelationAggregateInput? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ChatWhereUniqueInput implements _i1.JsonSerializable {
  const ChatWhereUniqueInput({this.id});

  factory ChatWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ChatWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$ChatWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ChatOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ChatOrderByWithAggregationInput({
    this.id,
    this.name,
    this.createdDate,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ChatOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$ChatOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  @JsonKey(name: r'created_date')
  final SortOrder? createdDate;

  @JsonKey(name: r'_count')
  final ChatCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ChatAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ChatMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ChatMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ChatSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ChatScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ChatScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ChatScalarWhereWithAggregatesInput>? AND;

  final Iterable<ChatScalarWhereWithAggregatesInput>? OR;

  final Iterable<ChatScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  @JsonKey(name: r'created_date')
  final DateTimeWithAggregatesFilter? createdDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ConversationWhereInput implements _i1.JsonSerializable {
  const ConversationWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
    this.chat,
    this.sender,
    this.receiver,
  });

  factory ConversationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationWhereInputFromJson(json);

  final Iterable<ConversationWhereInput>? AND;

  final Iterable<ConversationWhereInput>? OR;

  final Iterable<ConversationWhereInput>? NOT;

  final IntFilter? id;

  @JsonKey(name: r'chat_id')
  final IntFilter? chatId;

  @JsonKey(name: r'sender_id')
  final IntFilter? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFilter? receiverId;

  final StringFilter? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFilter? sentDate;

  final ChatRelationFilter? chat;

  final UserRelationFilter? sender;

  final UserRelationFilter? receiver;

  @override
  Map<String, dynamic> toJson() => _$ConversationWhereInputToJson(this);
}

@_i1.jsonSerializable
class ConversationOrderByWithRelationInput implements _i1.JsonSerializable {
  const ConversationOrderByWithRelationInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
    this.chat,
    this.sender,
    this.receiver,
  });

  factory ConversationOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  final SortOrder? message;

  @JsonKey(name: r'sent_date')
  final SortOrder? sentDate;

  final ChatOrderByWithRelationInput? chat;

  final UserOrderByWithRelationInput? sender;

  final UserOrderByWithRelationInput? receiver;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ConversationWhereUniqueInput implements _i1.JsonSerializable {
  const ConversationWhereUniqueInput({this.id});

  factory ConversationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$ConversationWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ConversationOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ConversationOrderByWithAggregationInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ConversationOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  final SortOrder? message;

  @JsonKey(name: r'sent_date')
  final SortOrder? sentDate;

  @JsonKey(name: r'_count')
  final ConversationCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ConversationAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ConversationMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ConversationMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ConversationSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ConversationScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const ConversationScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ConversationScalarWhereWithAggregatesInput>? AND;

  final Iterable<ConversationScalarWhereWithAggregatesInput>? OR;

  final Iterable<ConversationScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  @JsonKey(name: r'chat_id')
  final IntWithAggregatesFilter? chatId;

  @JsonKey(name: r'sender_id')
  final IntWithAggregatesFilter? senderId;

  @JsonKey(name: r'receiver_id')
  final IntWithAggregatesFilter? receiverId;

  final StringWithAggregatesFilter? message;

  @JsonKey(name: r'sent_date')
  final DateTimeWithAggregatesFilter? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    required this.email,
    required this.name,
    required this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'send_chats')
  final ConversationCreateNestedManyWithoutSenderInput? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationCreateNestedManyWithoutReceiverInput? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final int? id;

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'send_chats')
  final ConversationUncheckedCreateNestedManyWithoutSenderInput? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationUncheckedCreateNestedManyWithoutReceiverInput? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.email,
    this.name,
    this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'send_chats')
  final ConversationUpdateManyWithoutSenderNestedInput? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationUpdateManyWithoutReceiverNestedInput? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.sendChats,
    this.receiveChats,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'send_chats')
  final ConversationUncheckedUpdateManyWithoutSenderNestedInput? sendChats;

  @JsonKey(name: r'receive_chats')
  final ConversationUncheckedUpdateManyWithoutReceiverNestedInput? receiveChats;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.email,
    required this.name,
    required this.password,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final int? id;

  final String email;

  final String name;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.email,
    this.name,
    this.password,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationCreateInput implements _i1.JsonSerializable {
  const AuthenticationCreateInput({
    required this.userId,
    required this.accessToken,
    required this.expireDate,
  });

  factory AuthenticationCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationCreateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final int userId;

  @JsonKey(name: r'access_token')
  final String accessToken;

  @JsonKey(name: r'expire_date')
  final DateTime expireDate;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationCreateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationUncheckedCreateInput implements _i1.JsonSerializable {
  const AuthenticationUncheckedCreateInput({
    this.id,
    required this.userId,
    required this.accessToken,
    required this.expireDate,
  });

  factory AuthenticationUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationUncheckedCreateInputFromJson(json);

  final int? id;

  @JsonKey(name: r'user_id')
  final int userId;

  @JsonKey(name: r'access_token')
  final String accessToken;

  @JsonKey(name: r'expire_date')
  final DateTime expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationUpdateInput implements _i1.JsonSerializable {
  const AuthenticationUpdateInput({
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationUpdateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  @JsonKey(name: r'access_token')
  final StringFieldUpdateOperationsInput? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeFieldUpdateOperationsInput? expireDate;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationUncheckedUpdateInput implements _i1.JsonSerializable {
  const AuthenticationUncheckedUpdateInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  @JsonKey(name: r'access_token')
  final StringFieldUpdateOperationsInput? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeFieldUpdateOperationsInput? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationCreateManyInput implements _i1.JsonSerializable {
  const AuthenticationCreateManyInput({
    this.id,
    required this.userId,
    required this.accessToken,
    required this.expireDate,
  });

  factory AuthenticationCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationCreateManyInputFromJson(json);

  final int? id;

  @JsonKey(name: r'user_id')
  final int userId;

  @JsonKey(name: r'access_token')
  final String accessToken;

  @JsonKey(name: r'expire_date')
  final DateTime expireDate;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationUpdateManyMutationInput implements _i1.JsonSerializable {
  const AuthenticationUpdateManyMutationInput({
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  @JsonKey(name: r'access_token')
  final StringFieldUpdateOperationsInput? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeFieldUpdateOperationsInput? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AuthenticationUncheckedUpdateManyInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  @JsonKey(name: r'access_token')
  final StringFieldUpdateOperationsInput? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTimeFieldUpdateOperationsInput? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ChatCreateInput implements _i1.JsonSerializable {
  const ChatCreateInput({
    required this.name,
    required this.createdDate,
    this.conversation,
  });

  factory ChatCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatCreateInputFromJson(json);

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  final ConversationCreateNestedManyWithoutChatInput? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatCreateInputToJson(this);
}

@_i1.jsonSerializable
class ChatUncheckedCreateInput implements _i1.JsonSerializable {
  const ChatUncheckedCreateInput({
    this.id,
    required this.name,
    required this.createdDate,
    this.conversation,
  });

  factory ChatUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatUncheckedCreateInputFromJson(json);

  final int? id;

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  final ConversationUncheckedCreateNestedManyWithoutChatInput? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ChatUpdateInput implements _i1.JsonSerializable {
  const ChatUpdateInput({
    this.name,
    this.createdDate,
    this.conversation,
  });

  factory ChatUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  final ConversationUpdateManyWithoutChatNestedInput? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ChatUncheckedUpdateInput implements _i1.JsonSerializable {
  const ChatUncheckedUpdateInput({
    this.id,
    this.name,
    this.createdDate,
    this.conversation,
  });

  factory ChatUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  final ConversationUncheckedUpdateManyWithoutChatNestedInput? conversation;

  @override
  Map<String, dynamic> toJson() => _$ChatUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ChatCreateManyInput implements _i1.JsonSerializable {
  const ChatCreateManyInput({
    this.id,
    required this.name,
    required this.createdDate,
  });

  factory ChatCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ChatCreateManyInputFromJson(json);

  final int? id;

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ChatUpdateManyMutationInput implements _i1.JsonSerializable {
  const ChatUpdateManyMutationInput({
    this.name,
    this.createdDate,
  });

  factory ChatUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$ChatUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ChatUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ChatUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ChatUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateInput implements _i1.JsonSerializable {
  const ConversationCreateInput({
    required this.message,
    required this.sentDate,
    required this.chat,
    required this.sender,
    required this.receiver,
  });

  factory ConversationCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationCreateInputFromJson(json);

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  final ChatCreateNestedOneWithoutConversationInput chat;

  final UserCreateNestedOneWithoutSendChatsInput sender;

  final UserCreateNestedOneWithoutReceiveChatsInput receiver;

  @override
  Map<String, dynamic> toJson() => _$ConversationCreateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateInput implements _i1.JsonSerializable {
  const ConversationUncheckedCreateInput({
    this.id,
    required this.chatId,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'sender_id')
  final int senderId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateInput implements _i1.JsonSerializable {
  const ConversationUpdateInput({
    this.message,
    this.sentDate,
    this.chat,
    this.sender,
    this.receiver,
  });

  factory ConversationUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  final ChatUpdateOneRequiredWithoutConversationNestedInput? chat;

  final UserUpdateOneRequiredWithoutSendChatsNestedInput? sender;

  final UserUpdateOneRequiredWithoutReceiveChatsNestedInput? receiver;

  @override
  Map<String, dynamic> toJson() => _$ConversationUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateInput implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManyInput implements _i1.JsonSerializable {
  const ConversationCreateManyInput({
    this.id,
    required this.chatId,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationCreateManyInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'sender_id')
  final int senderId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() => _$ConversationCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyMutationInput implements _i1.JsonSerializable {
  const ConversationUpdateManyMutationInput({
    this.message,
    this.sentDate,
  });

  factory ConversationUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class ConversationListRelationFilter implements _i1.JsonSerializable {
  const ConversationListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory ConversationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConversationListRelationFilterFromJson(json);

  final ConversationWhereInput? every;

  final ConversationWhereInput? some;

  final ConversationWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$ConversationListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ConversationOrderByRelationAggregateInput
    implements _i1.JsonSerializable {
  const ConversationOrderByRelationAggregateInput({this.$count});

  factory ConversationOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UserAvgOrderByAggregateInput({this.id});

  factory UserAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UserSumOrderByAggregateInput({this.id});

  factory UserSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class AuthenticationCountOrderByAggregateInput implements _i1.JsonSerializable {
  const AuthenticationCountOrderByAggregateInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @JsonKey(name: r'access_token')
  final SortOrder? accessToken;

  @JsonKey(name: r'expire_date')
  final SortOrder? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AuthenticationAvgOrderByAggregateInput({
    this.id,
    this.userId,
  });

  factory AuthenticationAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AuthenticationMaxOrderByAggregateInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @JsonKey(name: r'access_token')
  final SortOrder? accessToken;

  @JsonKey(name: r'expire_date')
  final SortOrder? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AuthenticationMinOrderByAggregateInput({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @JsonKey(name: r'access_token')
  final SortOrder? accessToken;

  @JsonKey(name: r'expire_date')
  final SortOrder? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AuthenticationSumOrderByAggregateInput implements _i1.JsonSerializable {
  const AuthenticationSumOrderByAggregateInput({
    this.id,
    this.userId,
  });

  factory AuthenticationSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class ChatCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ChatCountOrderByAggregateInput({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  @JsonKey(name: r'created_date')
  final SortOrder? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ChatAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ChatAvgOrderByAggregateInput({this.id});

  factory ChatAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$ChatAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ChatMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ChatMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  @JsonKey(name: r'created_date')
  final SortOrder? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ChatMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ChatMinOrderByAggregateInput({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  @JsonKey(name: r'created_date')
  final SortOrder? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ChatSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ChatSumOrderByAggregateInput({this.id});

  factory ChatSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ChatSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$ChatSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ChatRelationFilter implements _i1.JsonSerializable {
  const ChatRelationFilter({
    this.$is,
    this.isNot,
  });

  factory ChatRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ChatRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final ChatWhereInput? $is;

  final ChatWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$ChatRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UserRelationFilter implements _i1.JsonSerializable {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UserWhereInput? $is;

  final UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ConversationCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ConversationCountOrderByAggregateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  final SortOrder? message;

  @JsonKey(name: r'sent_date')
  final SortOrder? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ConversationAvgOrderByAggregateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
  });

  factory ConversationAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ConversationMaxOrderByAggregateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  final SortOrder? message;

  @JsonKey(name: r'sent_date')
  final SortOrder? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ConversationMinOrderByAggregateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  final SortOrder? message;

  @JsonKey(name: r'sent_date')
  final SortOrder? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ConversationSumOrderByAggregateInput({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
  });

  factory ConversationSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'chat_id')
  final SortOrder? chatId;

  @JsonKey(name: r'sender_id')
  final SortOrder? senderId;

  @JsonKey(name: r'receiver_id')
  final SortOrder? receiverId;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateNestedManyWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationCreateNestedManyWithoutSenderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationCreateNestedManyWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateNestedManyWithoutSenderInputFromJson(json);

  final Iterable<ConversationCreateWithoutSenderInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutSenderInput>?
      connectOrCreate;

  final ConversationCreateManySenderInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateNestedManyWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateNestedManyWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationCreateNestedManyWithoutReceiverInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationCreateNestedManyWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateNestedManyWithoutReceiverInputFromJson(json);

  final Iterable<ConversationCreateWithoutReceiverInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutReceiverInput>?
      connectOrCreate;

  final ConversationCreateManyReceiverInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateNestedManyWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateNestedManyWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateNestedManyWithoutSenderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationUncheckedCreateNestedManyWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateNestedManyWithoutSenderInputFromJson(json);

  final Iterable<ConversationCreateWithoutSenderInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutSenderInput>?
      connectOrCreate;

  final ConversationCreateManySenderInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateNestedManyWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateNestedManyWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateNestedManyWithoutReceiverInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationUncheckedCreateNestedManyWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateNestedManyWithoutReceiverInputFromJson(json);

  final Iterable<ConversationCreateWithoutReceiverInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutReceiverInput>?
      connectOrCreate;

  final ConversationCreateManyReceiverInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateNestedManyWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithoutSenderNestedInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithoutSenderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUpdateManyWithoutSenderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithoutSenderNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutSenderInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutSenderInput>?
      connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutSenderInput>? upsert;

  final ConversationCreateManySenderInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutSenderInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutSenderInput>? updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithoutSenderNestedInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithoutReceiverNestedInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithoutReceiverNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUpdateManyWithoutReceiverNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithoutReceiverNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutReceiverInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutReceiverInput>?
      connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutReceiverInput>? upsert;

  final ConversationCreateManyReceiverInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutReceiverInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutReceiverInput>?
      updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithoutReceiverNestedInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutSenderNestedInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutSenderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUncheckedUpdateManyWithoutSenderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutSenderNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutSenderInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutSenderInput>?
      connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutSenderInput>? upsert;

  final ConversationCreateManySenderInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutSenderInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutSenderInput>? updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutSenderNestedInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutReceiverNestedInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutReceiverNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUncheckedUpdateManyWithoutReceiverNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutReceiverNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutReceiverInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutReceiverInput>?
      connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutReceiverInput>? upsert;

  final ConversationCreateManyReceiverInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutReceiverInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutReceiverInput>?
      updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutReceiverNestedInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateNestedManyWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationCreateNestedManyWithoutChatInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationCreateNestedManyWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateNestedManyWithoutChatInputFromJson(json);

  final Iterable<ConversationCreateWithoutChatInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutChatInput>? connectOrCreate;

  final ConversationCreateManyChatInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateNestedManyWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateNestedManyWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateNestedManyWithoutChatInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ConversationUncheckedCreateNestedManyWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateNestedManyWithoutChatInputFromJson(json);

  final Iterable<ConversationCreateWithoutChatInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutChatInput>? connectOrCreate;

  final ConversationCreateManyChatInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateNestedManyWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithoutChatNestedInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithoutChatNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUpdateManyWithoutChatNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithoutChatNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutChatInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutChatInput>? connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutChatInput>? upsert;

  final ConversationCreateManyChatInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutChatInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutChatInput>? updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithoutChatNestedInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutChatNestedInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutChatNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ConversationUncheckedUpdateManyWithoutChatNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutChatNestedInputFromJson(json);

  final Iterable<ConversationCreateWithoutChatInput>? create;

  final Iterable<ConversationCreateOrConnectWithoutChatInput>? connectOrCreate;

  final Iterable<ConversationUpsertWithWhereUniqueWithoutChatInput>? upsert;

  final ConversationCreateManyChatInputEnvelope? createMany;

  final Iterable<ConversationWhereUniqueInput>? set;

  final Iterable<ConversationWhereUniqueInput>? disconnect;

  final Iterable<ConversationWhereUniqueInput>? delete;

  final Iterable<ConversationWhereUniqueInput>? connect;

  final Iterable<ConversationUpdateWithWhereUniqueWithoutChatInput>? update;

  final Iterable<ConversationUpdateManyWithWhereWithoutChatInput>? updateMany;

  final Iterable<ConversationScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutChatNestedInputToJson(this);
}

@_i1.jsonSerializable
class ChatCreateNestedOneWithoutConversationInput
    implements _i1.JsonSerializable {
  const ChatCreateNestedOneWithoutConversationInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory ChatCreateNestedOneWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCreateNestedOneWithoutConversationInputFromJson(json);

  final ChatCreateWithoutConversationInput? create;

  final ChatCreateOrConnectWithoutConversationInput? connectOrCreate;

  final ChatWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatCreateNestedOneWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutSendChatsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutSendChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutSendChatsInputFromJson(json);

  final UserCreateWithoutSendChatsInput? create;

  final UserCreateOrConnectWithoutSendChatsInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutReceiveChatsInput
    implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutReceiveChatsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutReceiveChatsInputFromJson(json);

  final UserCreateWithoutReceiveChatsInput? create;

  final UserCreateOrConnectWithoutReceiveChatsInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class ChatUpdateOneRequiredWithoutConversationNestedInput
    implements _i1.JsonSerializable {
  const ChatUpdateOneRequiredWithoutConversationNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory ChatUpdateOneRequiredWithoutConversationNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatUpdateOneRequiredWithoutConversationNestedInputFromJson(json);

  final ChatCreateWithoutConversationInput? create;

  final ChatCreateOrConnectWithoutConversationInput? connectOrCreate;

  final ChatUpsertWithoutConversationInput? upsert;

  final ChatWhereUniqueInput? connect;

  final ChatUpdateWithoutConversationInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatUpdateOneRequiredWithoutConversationNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneRequiredWithoutSendChatsNestedInput
    implements _i1.JsonSerializable {
  const UserUpdateOneRequiredWithoutSendChatsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory UserUpdateOneRequiredWithoutSendChatsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneRequiredWithoutSendChatsNestedInputFromJson(json);

  final UserCreateWithoutSendChatsInput? create;

  final UserCreateOrConnectWithoutSendChatsInput? connectOrCreate;

  final UserUpsertWithoutSendChatsInput? upsert;

  final UserWhereUniqueInput? connect;

  final UserUpdateWithoutSendChatsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneRequiredWithoutSendChatsNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneRequiredWithoutReceiveChatsNestedInput
    implements _i1.JsonSerializable {
  const UserUpdateOneRequiredWithoutReceiveChatsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory UserUpdateOneRequiredWithoutReceiveChatsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneRequiredWithoutReceiveChatsNestedInputFromJson(json);

  final UserCreateWithoutReceiveChatsInput? create;

  final UserCreateOrConnectWithoutReceiveChatsInput? connectOrCreate;

  final UserUpsertWithoutReceiveChatsInput? upsert;

  final UserWhereUniqueInput? connect;

  final UserUpdateWithoutReceiveChatsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneRequiredWithoutReceiveChatsNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateWithoutSenderInput implements _i1.JsonSerializable {
  const ConversationCreateWithoutSenderInput({
    required this.message,
    required this.sentDate,
    required this.chat,
    required this.receiver,
  });

  factory ConversationCreateWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateWithoutSenderInputFromJson(json);

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  final ChatCreateNestedOneWithoutConversationInput chat;

  final UserCreateNestedOneWithoutReceiveChatsInput receiver;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateWithoutSenderInput({
    this.id,
    required this.chatId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationUncheckedCreateWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateWithoutSenderInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateOrConnectWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationCreateOrConnectWithoutSenderInput({
    required this.where,
    required this.create,
  });

  factory ConversationCreateOrConnectWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateOrConnectWithoutSenderInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationCreateWithoutSenderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateOrConnectWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManySenderInputEnvelope
    implements _i1.JsonSerializable {
  const ConversationCreateManySenderInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ConversationCreateManySenderInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateManySenderInputEnvelopeFromJson(json);

  final Iterable<ConversationCreateManySenderInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManySenderInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateWithoutReceiverInput implements _i1.JsonSerializable {
  const ConversationCreateWithoutReceiverInput({
    required this.message,
    required this.sentDate,
    required this.chat,
    required this.sender,
  });

  factory ConversationCreateWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateWithoutReceiverInputFromJson(json);

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  final ChatCreateNestedOneWithoutConversationInput chat;

  final UserCreateNestedOneWithoutSendChatsInput sender;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateWithoutReceiverInput({
    this.id,
    required this.chatId,
    required this.senderId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationUncheckedCreateWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateWithoutReceiverInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'sender_id')
  final int senderId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateOrConnectWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationCreateOrConnectWithoutReceiverInput({
    required this.where,
    required this.create,
  });

  factory ConversationCreateOrConnectWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateOrConnectWithoutReceiverInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationCreateWithoutReceiverInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateOrConnectWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManyReceiverInputEnvelope
    implements _i1.JsonSerializable {
  const ConversationCreateManyReceiverInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ConversationCreateManyReceiverInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateManyReceiverInputEnvelopeFromJson(json);

  final Iterable<ConversationCreateManyReceiverInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManyReceiverInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class ConversationUpsertWithWhereUniqueWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUpsertWithWhereUniqueWithoutSenderInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ConversationUpsertWithWhereUniqueWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpsertWithWhereUniqueWithoutSenderInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutSenderInput update;

  final ConversationCreateWithoutSenderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpsertWithWhereUniqueWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithWhereUniqueWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUpdateWithWhereUniqueWithoutSenderInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateWithWhereUniqueWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithWhereUniqueWithoutSenderInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutSenderInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithWhereUniqueWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithWhereWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithWhereWithoutSenderInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateManyWithWhereWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithWhereWithoutSenderInputFromJson(json);

  final ConversationScalarWhereInput where;

  final ConversationUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithWhereWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationScalarWhereInput implements _i1.JsonSerializable {
  const ConversationScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationScalarWhereInputFromJson(json);

  final Iterable<ConversationScalarWhereInput>? AND;

  final Iterable<ConversationScalarWhereInput>? OR;

  final Iterable<ConversationScalarWhereInput>? NOT;

  final IntFilter? id;

  @JsonKey(name: r'chat_id')
  final IntFilter? chatId;

  @JsonKey(name: r'sender_id')
  final IntFilter? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFilter? receiverId;

  final StringFilter? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFilter? sentDate;

  @override
  Map<String, dynamic> toJson() => _$ConversationScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpsertWithWhereUniqueWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUpsertWithWhereUniqueWithoutReceiverInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ConversationUpsertWithWhereUniqueWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpsertWithWhereUniqueWithoutReceiverInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutReceiverInput update;

  final ConversationCreateWithoutReceiverInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpsertWithWhereUniqueWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithWhereUniqueWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUpdateWithWhereUniqueWithoutReceiverInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateWithWhereUniqueWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithWhereUniqueWithoutReceiverInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutReceiverInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithWhereUniqueWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithWhereWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithWhereWithoutReceiverInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateManyWithWhereWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithWhereWithoutReceiverInputFromJson(json);

  final ConversationScalarWhereInput where;

  final ConversationUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithWhereWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateWithoutChatInput implements _i1.JsonSerializable {
  const ConversationCreateWithoutChatInput({
    required this.message,
    required this.sentDate,
    required this.sender,
    required this.receiver,
  });

  factory ConversationCreateWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateWithoutChatInputFromJson(json);

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  final UserCreateNestedOneWithoutSendChatsInput sender;

  final UserCreateNestedOneWithoutReceiveChatsInput receiver;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedCreateWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedCreateWithoutChatInput({
    this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationUncheckedCreateWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedCreateWithoutChatInputFromJson(json);

  final int? id;

  @JsonKey(name: r'sender_id')
  final int senderId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedCreateWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateOrConnectWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationCreateOrConnectWithoutChatInput({
    required this.where,
    required this.create,
  });

  factory ConversationCreateOrConnectWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateOrConnectWithoutChatInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationCreateWithoutChatInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateOrConnectWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManyChatInputEnvelope implements _i1.JsonSerializable {
  const ConversationCreateManyChatInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ConversationCreateManyChatInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateManyChatInputEnvelopeFromJson(json);

  final Iterable<ConversationCreateManyChatInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManyChatInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class ConversationUpsertWithWhereUniqueWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUpsertWithWhereUniqueWithoutChatInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ConversationUpsertWithWhereUniqueWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpsertWithWhereUniqueWithoutChatInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutChatInput update;

  final ConversationCreateWithoutChatInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpsertWithWhereUniqueWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithWhereUniqueWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUpdateWithWhereUniqueWithoutChatInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateWithWhereUniqueWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithWhereUniqueWithoutChatInputFromJson(json);

  final ConversationWhereUniqueInput where;

  final ConversationUpdateWithoutChatInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithWhereUniqueWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateManyWithWhereWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUpdateManyWithWhereWithoutChatInput({
    required this.where,
    required this.data,
  });

  factory ConversationUpdateManyWithWhereWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateManyWithWhereWithoutChatInputFromJson(json);

  final ConversationScalarWhereInput where;

  final ConversationUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateManyWithWhereWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ChatCreateWithoutConversationInput implements _i1.JsonSerializable {
  const ChatCreateWithoutConversationInput({
    required this.name,
    required this.createdDate,
  });

  factory ChatCreateWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCreateWithoutConversationInputFromJson(json);

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatCreateWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class ChatUncheckedCreateWithoutConversationInput
    implements _i1.JsonSerializable {
  const ChatUncheckedCreateWithoutConversationInput({
    this.id,
    required this.name,
    required this.createdDate,
  });

  factory ChatUncheckedCreateWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatUncheckedCreateWithoutConversationInputFromJson(json);

  final int? id;

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatUncheckedCreateWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class ChatCreateOrConnectWithoutConversationInput
    implements _i1.JsonSerializable {
  const ChatCreateOrConnectWithoutConversationInput({
    required this.where,
    required this.create,
  });

  factory ChatCreateOrConnectWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCreateOrConnectWithoutConversationInputFromJson(json);

  final ChatWhereUniqueInput where;

  final ChatCreateWithoutConversationInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatCreateOrConnectWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserCreateWithoutSendChatsInput({
    required this.email,
    required this.name,
    required this.password,
    this.receiveChats,
  });

  factory UserCreateWithoutSendChatsInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutSendChatsInputFromJson(json);

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'receive_chats')
  final ConversationCreateNestedManyWithoutReceiverInput? receiveChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutSendChatsInput({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    this.receiveChats,
  });

  factory UserUncheckedCreateWithoutSendChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutSendChatsInputFromJson(json);

  final int? id;

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'receive_chats')
  final ConversationUncheckedCreateNestedManyWithoutReceiverInput? receiveChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutSendChatsInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutSendChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutSendChatsInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutSendChatsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutReceiveChatsInput implements _i1.JsonSerializable {
  const UserCreateWithoutReceiveChatsInput({
    required this.email,
    required this.name,
    required this.password,
    this.sendChats,
  });

  factory UserCreateWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateWithoutReceiveChatsInputFromJson(json);

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'send_chats')
  final ConversationCreateNestedManyWithoutSenderInput? sendChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutReceiveChatsInput
    implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutReceiveChatsInput({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    this.sendChats,
  });

  factory UserUncheckedCreateWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutReceiveChatsInputFromJson(json);

  final int? id;

  final String email;

  final String name;

  final String password;

  @JsonKey(name: r'send_chats')
  final ConversationUncheckedCreateNestedManyWithoutSenderInput? sendChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutReceiveChatsInput
    implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutReceiveChatsInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutReceiveChatsInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutReceiveChatsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class ChatUpsertWithoutConversationInput implements _i1.JsonSerializable {
  const ChatUpsertWithoutConversationInput({
    required this.update,
    required this.create,
  });

  factory ChatUpsertWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatUpsertWithoutConversationInputFromJson(json);

  final ChatUpdateWithoutConversationInput update;

  final ChatCreateWithoutConversationInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatUpsertWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class ChatUpdateWithoutConversationInput implements _i1.JsonSerializable {
  const ChatUpdateWithoutConversationInput({
    this.name,
    this.createdDate,
  });

  factory ChatUpdateWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatUpdateWithoutConversationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatUpdateWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class ChatUncheckedUpdateWithoutConversationInput
    implements _i1.JsonSerializable {
  const ChatUncheckedUpdateWithoutConversationInput({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatUncheckedUpdateWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ChatUncheckedUpdateWithoutConversationInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  @JsonKey(name: r'created_date')
  final DateTimeFieldUpdateOperationsInput? createdDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ChatUncheckedUpdateWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserUpsertWithoutSendChatsInput({
    required this.update,
    required this.create,
  });

  factory UserUpsertWithoutSendChatsInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpsertWithoutSendChatsInputFromJson(json);

  final UserUpdateWithoutSendChatsInput update;

  final UserCreateWithoutSendChatsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpsertWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserUpdateWithoutSendChatsInput({
    this.email,
    this.name,
    this.password,
    this.receiveChats,
  });

  factory UserUpdateWithoutSendChatsInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutSendChatsInputFromJson(json);

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'receive_chats')
  final ConversationUpdateManyWithoutReceiverNestedInput? receiveChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutSendChatsInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutSendChatsInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.receiveChats,
  });

  factory UserUncheckedUpdateWithoutSendChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutSendChatsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'receive_chats')
  final ConversationUncheckedUpdateManyWithoutReceiverNestedInput? receiveChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutReceiveChatsInput implements _i1.JsonSerializable {
  const UserUpsertWithoutReceiveChatsInput({
    required this.update,
    required this.create,
  });

  factory UserUpsertWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpsertWithoutReceiveChatsInputFromJson(json);

  final UserUpdateWithoutReceiveChatsInput update;

  final UserCreateWithoutReceiveChatsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpsertWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutReceiveChatsInput implements _i1.JsonSerializable {
  const UserUpdateWithoutReceiveChatsInput({
    this.email,
    this.name,
    this.password,
    this.sendChats,
  });

  factory UserUpdateWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateWithoutReceiveChatsInputFromJson(json);

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'send_chats')
  final ConversationUpdateManyWithoutSenderNestedInput? sendChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutReceiveChatsInput
    implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutReceiveChatsInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.sendChats,
  });

  factory UserUncheckedUpdateWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutReceiveChatsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @JsonKey(name: r'send_chats')
  final ConversationUncheckedUpdateManyWithoutSenderNestedInput? sendChats;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManySenderInput implements _i1.JsonSerializable {
  const ConversationCreateManySenderInput({
    this.id,
    required this.chatId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationCreateManySenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateManySenderInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManySenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManyReceiverInput implements _i1.JsonSerializable {
  const ConversationCreateManyReceiverInput({
    this.id,
    required this.chatId,
    required this.senderId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationCreateManyReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationCreateManyReceiverInputFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'sender_id')
  final int senderId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManyReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithoutSenderInput implements _i1.JsonSerializable {
  const ConversationUpdateWithoutSenderInput({
    this.message,
    this.sentDate,
    this.chat,
    this.receiver,
  });

  factory ConversationUpdateWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithoutSenderInputFromJson(json);

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  final ChatUpdateOneRequiredWithoutConversationNestedInput? chat;

  final UserUpdateOneRequiredWithoutReceiveChatsNestedInput? receiver;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateWithoutSenderInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateWithoutSenderInput({
    this.id,
    this.chatId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateWithoutSenderInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateWithoutSenderInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateWithoutSenderInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutSendChatsInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutSendChatsInput({
    this.id,
    this.chatId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateManyWithoutSendChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutSendChatsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutSendChatsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithoutReceiverInput implements _i1.JsonSerializable {
  const ConversationUpdateWithoutReceiverInput({
    this.message,
    this.sentDate,
    this.chat,
    this.sender,
  });

  factory ConversationUpdateWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithoutReceiverInputFromJson(json);

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  final ChatUpdateOneRequiredWithoutConversationNestedInput? chat;

  final UserUpdateOneRequiredWithoutSendChatsNestedInput? sender;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateWithoutReceiverInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateWithoutReceiverInput({
    this.id,
    this.chatId,
    this.senderId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateWithoutReceiverInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateWithoutReceiverInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateWithoutReceiverInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutReceiveChatsInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutReceiveChatsInput({
    this.id,
    this.chatId,
    this.senderId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateManyWithoutReceiveChatsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutReceiveChatsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'chat_id')
  final IntFieldUpdateOperationsInput? chatId;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutReceiveChatsInputToJson(this);
}

@_i1.jsonSerializable
class ConversationCreateManyChatInput implements _i1.JsonSerializable {
  const ConversationCreateManyChatInput({
    this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory ConversationCreateManyChatInput.fromJson(Map<String, dynamic> json) =>
      _$ConversationCreateManyChatInputFromJson(json);

  final int? id;

  @JsonKey(name: r'sender_id')
  final int senderId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationCreateManyChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUpdateWithoutChatInput implements _i1.JsonSerializable {
  const ConversationUpdateWithoutChatInput({
    this.message,
    this.sentDate,
    this.sender,
    this.receiver,
  });

  factory ConversationUpdateWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUpdateWithoutChatInputFromJson(json);

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  final UserUpdateOneRequiredWithoutSendChatsNestedInput? sender;

  final UserUpdateOneRequiredWithoutReceiveChatsNestedInput? receiver;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUpdateWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateWithoutChatInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateWithoutChatInput({
    this.id,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateWithoutChatInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateWithoutChatInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateWithoutChatInputToJson(this);
}

@_i1.jsonSerializable
class ConversationUncheckedUpdateManyWithoutConversationInput
    implements _i1.JsonSerializable {
  const ConversationUncheckedUpdateManyWithoutConversationInput({
    this.id,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationUncheckedUpdateManyWithoutConversationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationUncheckedUpdateManyWithoutConversationInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'sender_id')
  final IntFieldUpdateOperationsInput? senderId;

  @JsonKey(name: r'receiver_id')
  final IntFieldUpdateOperationsInput? receiverId;

  final StringFieldUpdateOperationsInput? message;

  @JsonKey(name: r'sent_date')
  final DateTimeFieldUpdateOperationsInput? sentDate;

  @override
  Map<String, dynamic> toJson() =>
      _$ConversationUncheckedUpdateManyWithoutConversationInputToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.email,
    required this.name,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int id;

  final String email;

  final String name;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Authentication implements _i1.JsonSerializable {
  const Authentication({
    required this.id,
    required this.userId,
    required this.accessToken,
    required this.expireDate,
  });

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);

  final int id;

  @JsonKey(name: r'user_id')
  final int userId;

  @JsonKey(name: r'access_token')
  final String accessToken;

  @JsonKey(name: r'expire_date')
  final DateTime expireDate;

  @override
  Map<String, dynamic> toJson() => _$AuthenticationToJson(this);
}

@_i1.jsonSerializable
class Chat implements _i1.JsonSerializable {
  const Chat({
    required this.id,
    required this.name,
    required this.createdDate,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  final int id;

  final String name;

  @JsonKey(name: r'created_date')
  final DateTime createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}

@_i1.jsonSerializable
class Conversation implements _i1.JsonSerializable {
  const Conversation({
    required this.id,
    required this.chatId,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentDate,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);

  final int id;

  @JsonKey(name: r'chat_id')
  final int chatId;

  @JsonKey(name: r'sender_id')
  final int senderId;

  @JsonKey(name: r'receiver_id')
  final int receiverId;

  final String message;

  @JsonKey(name: r'sent_date')
  final DateTime sentDate;

  @override
  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Conversation>?> sendChats({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'send_chats',
          fields: fields,
          args: args,
        )
      ]),
      key: r'send_chats',
    );
    final fields = ConversationScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> sendChats) => sendChats
        .map((Map sendChats) => Conversation.fromJson(sendChats.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  Future<Iterable<Conversation>?> receiveChats({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receive_chats',
          fields: fields,
          args: args,
        )
      ]),
      key: r'receive_chats',
    );
    final fields = ConversationScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> receiveChats) => receiveChats
        .map((Map receiveChats) => Conversation.fromJson(receiveChats.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UserCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountOutputType(query);
  }
}

class AuthenticationFluent<T> extends _i1.PrismaFluent<T> {
  const AuthenticationFluent(
    super.original,
    super.$query,
  );
}

class ChatFluent<T> extends _i1.PrismaFluent<T> {
  const ChatFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Conversation>?> conversation({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'conversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'conversation',
    );
    final fields = ConversationScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> conversation) => conversation
        .map((Map conversation) => Conversation.fromJson(conversation.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  ChatCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ChatCountOutputType(query);
  }
}

class ConversationFluent<T> extends _i1.PrismaFluent<T> {
  const ConversationFluent(
    super.original,
    super.$query,
  );

  ChatFluent<Chat> chat() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat',
          fields: fields,
        )
      ]),
      key: r'chat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Chat.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Chat)'));
    return ChatFluent<Chat>(
      future,
      query,
    );
  }

  UserFluent<User> sender() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender',
          fields: fields,
        )
      ]),
      key: r'sender',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User> receiver() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver',
          fields: fields,
        )
      ]),
      key: r'receiver',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension AuthenticationModelDelegateExtension
    on _i1.ModelDelegate<Authentication> {
  AuthenticationFluent<Authentication?> findUnique(
      {required AuthenticationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : null);
    return AuthenticationFluent<Authentication?>(
      future,
      query,
    );
  }

  AuthenticationFluent<Authentication> findUniqueOrThrow(
      {required AuthenticationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueAuthenticationOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueAuthenticationOrThrow',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Authentication)'));
    return AuthenticationFluent<Authentication>(
      future,
      query,
    );
  }

  AuthenticationFluent<Authentication?> findFirst({
    AuthenticationWhereInput? where,
    Iterable<AuthenticationOrderByWithRelationInput>? orderBy,
    AuthenticationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AuthenticationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : null);
    return AuthenticationFluent<Authentication?>(
      future,
      query,
    );
  }

  AuthenticationFluent<Authentication> findFirstOrThrow({
    AuthenticationWhereInput? where,
    Iterable<AuthenticationOrderByWithRelationInput>? orderBy,
    AuthenticationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AuthenticationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstAuthenticationOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstAuthenticationOrThrow',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Authentication)'));
    return AuthenticationFluent<Authentication>(
      future,
      query,
    );
  }

  Future<Iterable<Authentication>> findMany({
    AuthenticationWhereInput? where,
    Iterable<AuthenticationOrderByWithRelationInput>? orderBy,
    AuthenticationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AuthenticationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyAuthentication',
    );
    final fields = AuthenticationScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyAuthentication) =>
        findManyAuthentication.map((Map findManyAuthentication) =>
            Authentication.fromJson(findManyAuthentication.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AuthenticationFluent<Authentication> create(
      {required AuthenticationCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Authentication)'));
    return AuthenticationFluent<Authentication>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AuthenticationCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyAuthentication',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyAuthentication) =>
        AffectedRowsOutput.fromJson(createManyAuthentication.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AuthenticationFluent<Authentication?> update({
    required AuthenticationUpdateInput data,
    required AuthenticationWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : null);
    return AuthenticationFluent<Authentication?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AuthenticationUpdateManyMutationInput data,
    AuthenticationWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyAuthentication',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyAuthentication) =>
        AffectedRowsOutput.fromJson(updateManyAuthentication.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AuthenticationFluent<Authentication> upsert({
    required AuthenticationWhereUniqueInput where,
    required AuthenticationCreateInput create,
    required AuthenticationUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Authentication)'));
    return AuthenticationFluent<Authentication>(
      future,
      query,
    );
  }

  AuthenticationFluent<Authentication?> delete(
      {required AuthenticationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneAuthentication',
    );
    final future = query(AuthenticationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Authentication.fromJson(json.cast<String, dynamic>())
            : null);
    return AuthenticationFluent<Authentication?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AuthenticationWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyAuthentication',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyAuthentication) =>
        AffectedRowsOutput.fromJson(deleteManyAuthentication.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAuthentication aggregate({
    AuthenticationWhereInput? where,
    Iterable<AuthenticationOrderByWithRelationInput>? orderBy,
    AuthenticationWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateAuthentication',
    );
    return AggregateAuthentication(query);
  }

  Future<Iterable<AuthenticationGroupByOutputType>> groupBy({
    AuthenticationWhereInput? where,
    Iterable<AuthenticationOrderByWithAggregationInput>? orderBy,
    required Iterable<AuthenticationScalarFieldEnum> by,
    AuthenticationScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByAuthentication',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByAuthentication',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByAuthentication) => groupByAuthentication.map(
        (Map groupByAuthentication) => AuthenticationGroupByOutputType.fromJson(
            groupByAuthentication.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ChatModelDelegateExtension on _i1.ModelDelegate<Chat> {
  ChatFluent<Chat?> findUnique({required ChatWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Chat.fromJson(json.cast<String, dynamic>()) : null);
    return ChatFluent<Chat?>(
      future,
      query,
    );
  }

  ChatFluent<Chat> findUniqueOrThrow({required ChatWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueChatOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueChatOrThrow',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Chat.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Chat)'));
    return ChatFluent<Chat>(
      future,
      query,
    );
  }

  ChatFluent<Chat?> findFirst({
    ChatWhereInput? where,
    Iterable<ChatOrderByWithRelationInput>? orderBy,
    ChatWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ChatScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Chat.fromJson(json.cast<String, dynamic>()) : null);
    return ChatFluent<Chat?>(
      future,
      query,
    );
  }

  ChatFluent<Chat> findFirstOrThrow({
    ChatWhereInput? where,
    Iterable<ChatOrderByWithRelationInput>? orderBy,
    ChatWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ChatScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstChatOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstChatOrThrow',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Chat.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Chat)'));
    return ChatFluent<Chat>(
      future,
      query,
    );
  }

  Future<Iterable<Chat>> findMany({
    ChatWhereInput? where,
    Iterable<ChatOrderByWithRelationInput>? orderBy,
    ChatWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ChatScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyChat',
    );
    final fields = ChatScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyChat) => findManyChat
        .map((Map findManyChat) => Chat.fromJson(findManyChat.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ChatFluent<Chat> create({required ChatCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Chat.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Chat)'));
    return ChatFluent<Chat>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ChatCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyChat',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyChat) =>
        AffectedRowsOutput.fromJson(createManyChat.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ChatFluent<Chat?> update({
    required ChatUpdateInput data,
    required ChatWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Chat.fromJson(json.cast<String, dynamic>()) : null);
    return ChatFluent<Chat?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ChatUpdateManyMutationInput data,
    ChatWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyChat',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyChat) =>
        AffectedRowsOutput.fromJson(updateManyChat.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ChatFluent<Chat> upsert({
    required ChatWhereUniqueInput where,
    required ChatCreateInput create,
    required ChatUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Chat.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Chat)'));
    return ChatFluent<Chat>(
      future,
      query,
    );
  }

  ChatFluent<Chat?> delete({required ChatWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneChat',
    );
    final future = query(ChatScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Chat.fromJson(json.cast<String, dynamic>()) : null);
    return ChatFluent<Chat?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ChatWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyChat',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyChat) =>
        AffectedRowsOutput.fromJson(deleteManyChat.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateChat aggregate({
    ChatWhereInput? where,
    Iterable<ChatOrderByWithRelationInput>? orderBy,
    ChatWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateChat',
    );
    return AggregateChat(query);
  }

  Future<Iterable<ChatGroupByOutputType>> groupBy({
    ChatWhereInput? where,
    Iterable<ChatOrderByWithAggregationInput>? orderBy,
    required Iterable<ChatScalarFieldEnum> by,
    ChatScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByChat',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByChat',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByChat) => groupByChat.map((Map groupByChat) =>
        ChatGroupByOutputType.fromJson(groupByChat.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ConversationModelDelegateExtension
    on _i1.ModelDelegate<Conversation> {
  ConversationFluent<Conversation?> findUnique(
      {required ConversationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : null);
    return ConversationFluent<Conversation?>(
      future,
      query,
    );
  }

  ConversationFluent<Conversation> findUniqueOrThrow(
      {required ConversationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueConversationOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueConversationOrThrow',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Conversation)'));
    return ConversationFluent<Conversation>(
      future,
      query,
    );
  }

  ConversationFluent<Conversation?> findFirst({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : null);
    return ConversationFluent<Conversation?>(
      future,
      query,
    );
  }

  ConversationFluent<Conversation> findFirstOrThrow({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstConversationOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstConversationOrThrow',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Conversation)'));
    return ConversationFluent<Conversation>(
      future,
      query,
    );
  }

  Future<Iterable<Conversation>> findMany({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ConversationScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyConversation',
    );
    final fields = ConversationScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyConversation) =>
        findManyConversation.map((Map findManyConversation) =>
            Conversation.fromJson(findManyConversation.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ConversationFluent<Conversation> create(
      {required ConversationCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Conversation)'));
    return ConversationFluent<Conversation>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ConversationCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyConversation',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyConversation) =>
        AffectedRowsOutput.fromJson(createManyConversation.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ConversationFluent<Conversation?> update({
    required ConversationUpdateInput data,
    required ConversationWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : null);
    return ConversationFluent<Conversation?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ConversationUpdateManyMutationInput data,
    ConversationWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyConversation',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyConversation) =>
        AffectedRowsOutput.fromJson(updateManyConversation.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ConversationFluent<Conversation> upsert({
    required ConversationWhereUniqueInput where,
    required ConversationCreateInput create,
    required ConversationUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Conversation)'));
    return ConversationFluent<Conversation>(
      future,
      query,
    );
  }

  ConversationFluent<Conversation?> delete(
      {required ConversationWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneConversation',
    );
    final future = query(ConversationScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Conversation.fromJson(json.cast<String, dynamic>())
            : null);
    return ConversationFluent<Conversation?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ConversationWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyConversation',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyConversation) =>
        AffectedRowsOutput.fromJson(deleteManyConversation.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateConversation aggregate({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithRelationInput>? orderBy,
    ConversationWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateConversation',
    );
    return AggregateConversation(query);
  }

  Future<Iterable<ConversationGroupByOutputType>> groupBy({
    ConversationWhereInput? where,
    Iterable<ConversationOrderByWithAggregationInput>? orderBy,
    required Iterable<ConversationScalarFieldEnum> by,
    ConversationScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByConversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByConversation',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByConversation) =>
        groupByConversation.map((Map groupByConversation) =>
            ConversationGroupByOutputType.fromJson(groupByConversation.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final int? id;

  final String? email;

  final String? name;

  final String? password;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AuthenticationGroupByOutputType implements _i1.JsonSerializable {
  const AuthenticationGroupByOutputType({
    this.id,
    this.userId,
    this.accessToken,
    this.expireDate,
  });

  factory AuthenticationGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationGroupByOutputTypeFromJson(json);

  final int? id;

  @JsonKey(name: r'user_id')
  final int? userId;

  @JsonKey(name: r'access_token')
  final String? accessToken;

  @JsonKey(name: r'expire_date')
  final DateTime? expireDate;

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ChatGroupByOutputType implements _i1.JsonSerializable {
  const ChatGroupByOutputType({
    this.id,
    this.name,
    this.createdDate,
  });

  factory ChatGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ChatGroupByOutputTypeFromJson(json);

  final int? id;

  final String? name;

  @JsonKey(name: r'created_date')
  final DateTime? createdDate;

  @override
  Map<String, dynamic> toJson() => _$ChatGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ConversationGroupByOutputType implements _i1.JsonSerializable {
  const ConversationGroupByOutputType({
    this.id,
    this.chatId,
    this.senderId,
    this.receiverId,
    this.message,
    this.sentDate,
  });

  factory ConversationGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ConversationGroupByOutputTypeFromJson(json);

  final int? id;

  @JsonKey(name: r'chat_id')
  final int? chatId;

  @JsonKey(name: r'sender_id')
  final int? senderId;

  @JsonKey(name: r'receiver_id')
  final int? receiverId;

  final String? message;

  @JsonKey(name: r'sent_date')
  final DateTime? sentDate;

  @override
  Map<String, dynamic> toJson() => _$ConversationGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UserAvgAggregateOutputType(query);
  }

  UserSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UserSumAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateAuthentication {
  const AggregateAuthentication(this.$query);

  final _i1.PrismaFluentQuery $query;

  AuthenticationCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AuthenticationCountAggregateOutputType(query);
  }

  AuthenticationAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AuthenticationAvgAggregateOutputType(query);
  }

  AuthenticationSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AuthenticationSumAggregateOutputType(query);
  }

  AuthenticationMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AuthenticationMinAggregateOutputType(query);
  }

  AuthenticationMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AuthenticationMaxAggregateOutputType(query);
  }
}

class AggregateChat {
  const AggregateChat(this.$query);

  final _i1.PrismaFluentQuery $query;

  ChatCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ChatCountAggregateOutputType(query);
  }

  ChatAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ChatAvgAggregateOutputType(query);
  }

  ChatSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ChatSumAggregateOutputType(query);
  }

  ChatMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ChatMinAggregateOutputType(query);
  }

  ChatMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ChatMaxAggregateOutputType(query);
  }
}

class AggregateConversation {
  const AggregateConversation(this.$query);

  final _i1.PrismaFluentQuery $query;

  ConversationCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ConversationCountAggregateOutputType(query);
  }

  ConversationAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ConversationAvgAggregateOutputType(query);
  }

  ConversationSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ConversationSumAggregateOutputType(query);
  }

  ConversationMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ConversationMinAggregateOutputType(query);
  }

  ConversationMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ConversationMaxAggregateOutputType(query);
  }
}

class UserCountOutputType {
  const UserCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> sendChats({ConversationWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'send_chats',
          fields: fields,
          args: args,
        )
      ]),
      key: r'send_chats',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> receiveChats({ConversationWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receive_chats',
          fields: fields,
          args: args,
        )
      ]),
      key: r'receive_chats',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AuthenticationCountAggregateOutputType {
  const AuthenticationCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> accessToken() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'access_token',
          fields: fields,
        )
      ]),
      key: r'access_token',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> expireDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'expire_date',
          fields: fields,
        )
      ]),
      key: r'expire_date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AuthenticationAvgAggregateOutputType {
  const AuthenticationAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AuthenticationSumAggregateOutputType {
  const AuthenticationSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class AuthenticationMinAggregateOutputType {
  const AuthenticationMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> accessToken() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'access_token',
          fields: fields,
        )
      ]),
      key: r'access_token',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> expireDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'expire_date',
          fields: fields,
        )
      ]),
      key: r'expire_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class AuthenticationMaxAggregateOutputType {
  const AuthenticationMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> accessToken() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'access_token',
          fields: fields,
        )
      ]),
      key: r'access_token',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> expireDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'expire_date',
          fields: fields,
        )
      ]),
      key: r'expire_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class ChatCountOutputType {
  const ChatCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> conversation({ConversationWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'conversation',
          fields: fields,
          args: args,
        )
      ]),
      key: r'conversation',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ChatCountAggregateOutputType {
  const ChatCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_date',
          fields: fields,
        )
      ]),
      key: r'created_date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ChatAvgAggregateOutputType {
  const ChatAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ChatSumAggregateOutputType {
  const ChatSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class ChatMinAggregateOutputType {
  const ChatMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_date',
          fields: fields,
        )
      ]),
      key: r'created_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class ChatMaxAggregateOutputType {
  const ChatMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_date',
          fields: fields,
        )
      ]),
      key: r'created_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class ConversationCountAggregateOutputType {
  const ConversationCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> chatId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat_id',
          fields: fields,
        )
      ]),
      key: r'chat_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> senderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender_id',
          fields: fields,
        )
      ]),
      key: r'sender_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> receiverId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver_id',
          fields: fields,
        )
      ]),
      key: r'receiver_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> message() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'message',
          fields: fields,
        )
      ]),
      key: r'message',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> sentDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sent_date',
          fields: fields,
        )
      ]),
      key: r'sent_date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ConversationAvgAggregateOutputType {
  const ConversationAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> chatId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat_id',
          fields: fields,
        )
      ]),
      key: r'chat_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> senderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender_id',
          fields: fields,
        )
      ]),
      key: r'sender_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> receiverId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver_id',
          fields: fields,
        )
      ]),
      key: r'receiver_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ConversationSumAggregateOutputType {
  const ConversationSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> chatId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat_id',
          fields: fields,
        )
      ]),
      key: r'chat_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> senderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender_id',
          fields: fields,
        )
      ]),
      key: r'sender_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> receiverId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver_id',
          fields: fields,
        )
      ]),
      key: r'receiver_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class ConversationMinAggregateOutputType {
  const ConversationMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> chatId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat_id',
          fields: fields,
        )
      ]),
      key: r'chat_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> senderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender_id',
          fields: fields,
        )
      ]),
      key: r'sender_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> receiverId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver_id',
          fields: fields,
        )
      ]),
      key: r'receiver_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> message() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'message',
          fields: fields,
        )
      ]),
      key: r'message',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> sentDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sent_date',
          fields: fields,
        )
      ]),
      key: r'sent_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class ConversationMaxAggregateOutputType {
  const ConversationMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> chatId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'chat_id',
          fields: fields,
        )
      ]),
      key: r'chat_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> senderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sender_id',
          fields: fields,
        )
      ]),
      key: r'sender_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> receiverId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'receiver_id',
          fields: fields,
        )
      ]),
      key: r'receiver_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> message() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'message',
          fields: fields,
        )
      ]),
      key: r'message',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> sentDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sent_date',
          fields: fields,
        )
      ]),
      key: r'sent_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgVXNlciB7CiAgaWQgICAgSW50ICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIGVtYWlsIFN0cmluZwogIG5hbWUgIFN0cmluZwogIHBhc3N3b3JkIFN0cmluZwogIHNlbmRfY2hhdHMgQ29udmVyc2F0aW9uW10gQHJlbGF0aW9uKG5hbWU6ICJTZW5kZXIiKQogIHJlY2VpdmVfY2hhdHMgQ29udmVyc2F0aW9uW10gQHJlbGF0aW9uKG5hbWU6ICJSZWNlaXZlciIpCn0KCm1vZGVsIEF1dGhlbnRpY2F0aW9uIHsKICBpZCAgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgdXNlcl9pZCBJbnQKICBhY2Nlc3NfdG9rZW4gU3RyaW5nCiAgZXhwaXJlX2RhdGUgRGF0ZVRpbWUKCn0KCm1vZGVsIENoYXQgewppZCBJbnQgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKbmFtZSBTdHJpbmcKY3JlYXRlZF9kYXRlIERhdGVUaW1lCmNvbnZlcnNhdGlvbiBDb252ZXJzYXRpb25bXQoKfQoKbW9kZWwgQ29udmVyc2F0aW9uIHsKaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCmNoYXQgQ2hhdCBAcmVsYXRpb24oZmllbGRzOiBbY2hhdF9pZF0sIHJlZmVyZW5jZXM6IFtpZF0pCmNoYXRfaWQgSW50CnNlbmRlciBVc2VyIEByZWxhdGlvbigiU2VuZGVyIixmaWVsZHM6IFtzZW5kZXJfaWRdLCByZWZlcmVuY2VzOiBbaWRdKQpzZW5kZXJfaWQgSW50CnJlY2VpdmVyIFVzZXIgQHJlbGF0aW9uKCJSZWNlaXZlciIsZmllbGRzOiBbcmVjZWl2ZXJfaWRdLCByZWZlcmVuY2VzOiBbaWRdKQpyZWNlaXZlcl9pZCBJbnQKbWVzc2FnZSBTdHJpbmcKc2VudF9kYXRlIERhdGVUaW1lCn0KCgo=',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'D:\LearnFlutter\dart_frog\my_project\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Authentication> get authentication =>
      _i1.ModelDelegate<Authentication>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Chat> get chat => _i1.ModelDelegate<Chat>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Conversation> get conversation =>
      _i1.ModelDelegate<Conversation>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}

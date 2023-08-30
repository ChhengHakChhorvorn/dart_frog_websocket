// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      sendChats: json['send_chats'] == null
          ? null
          : ConversationListRelationFilter.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationListRelationFilter.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      sendChats: json['send_chats'] == null
          ? null
          : ConversationOrderByRelationAggregateInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationOrderByRelationAggregateInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

AuthenticationWhereInput _$AuthenticationWhereInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => AuthenticationWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => AuthenticationWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => AuthenticationWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : IntFilter.fromJson(json['user_id'] as Map<String, dynamic>),
      accessToken: json['access_token'] == null
          ? null
          : StringFilter.fromJson(json['access_token'] as Map<String, dynamic>),
      expireDate: json['expire_date'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['expire_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationWhereInputToJson(
    AuthenticationWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

AuthenticationOrderByWithRelationInput
    _$AuthenticationOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
          accessToken:
              $enumDecodeNullable(_$SortOrderEnumMap, json['access_token']),
          expireDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['expire_date']),
        );

Map<String, dynamic> _$AuthenticationOrderByWithRelationInputToJson(
    AuthenticationOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('access_token', _$SortOrderEnumMap[instance.accessToken]);
  writeNotNull('expire_date', _$SortOrderEnumMap[instance.expireDate]);
  return val;
}

AuthenticationWhereUniqueInput _$AuthenticationWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$AuthenticationWhereUniqueInputToJson(
    AuthenticationWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

AuthenticationOrderByWithAggregationInput
    _$AuthenticationOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
          accessToken:
              $enumDecodeNullable(_$SortOrderEnumMap, json['access_token']),
          expireDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['expire_date']),
          $count: json['_count'] == null
              ? null
              : AuthenticationCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : AuthenticationAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : AuthenticationMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : AuthenticationMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : AuthenticationSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AuthenticationOrderByWithAggregationInputToJson(
    AuthenticationOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('access_token', _$SortOrderEnumMap[instance.accessToken]);
  writeNotNull('expire_date', _$SortOrderEnumMap[instance.expireDate]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AuthenticationScalarWhereWithAggregatesInput
    _$AuthenticationScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AuthenticationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AuthenticationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AuthenticationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          userId: json['user_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          accessToken: json['access_token'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['access_token'] as Map<String, dynamic>),
          expireDate: json['expire_date'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['expire_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AuthenticationScalarWhereWithAggregatesInputToJson(
    AuthenticationScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

ChatWhereInput _$ChatWhereInputFromJson(Map<String, dynamic> json) =>
    ChatWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ChatWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ChatWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ChatWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['created_date'] as Map<String, dynamic>),
      conversation: json['conversation'] == null
          ? null
          : ConversationListRelationFilter.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatWhereInputToJson(ChatWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatOrderByWithRelationInput _$ChatOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    ChatOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['created_date']),
      conversation: json['conversation'] == null
          ? null
          : ConversationOrderByRelationAggregateInput.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatOrderByWithRelationInputToJson(
    ChatOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('created_date', _$SortOrderEnumMap[instance.createdDate]);
  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatWhereUniqueInput _$ChatWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ChatWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ChatWhereUniqueInputToJson(
    ChatWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

ChatOrderByWithAggregationInput _$ChatOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    ChatOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['created_date']),
      $count: json['_count'] == null
          ? null
          : ChatCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ChatAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ChatMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ChatMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ChatSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatOrderByWithAggregationInputToJson(
    ChatOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('created_date', _$SortOrderEnumMap[instance.createdDate]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ChatScalarWhereWithAggregatesInput _$ChatScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    ChatScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          ChatScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          ChatScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          ChatScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeWithAggregatesFilter.fromJson(
              json['created_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatScalarWhereWithAggregatesInputToJson(
    ChatScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  return val;
}

ConversationWhereInput _$ConversationWhereInputFromJson(
        Map<String, dynamic> json) =>
    ConversationWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => ConversationWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => ConversationWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => ConversationWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      chatId: json['chat_id'] == null
          ? null
          : IntFilter.fromJson(json['chat_id'] as Map<String, dynamic>),
      senderId: json['sender_id'] == null
          ? null
          : IntFilter.fromJson(json['sender_id'] as Map<String, dynamic>),
      receiverId: json['receiver_id'] == null
          ? null
          : IntFilter.fromJson(json['receiver_id'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : StringFilter.fromJson(json['message'] as Map<String, dynamic>),
      sentDate: json['sent_date'] == null
          ? null
          : DateTimeFilter.fromJson(json['sent_date'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : ChatRelationFilter.fromJson(json['chat'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : UserRelationFilter.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : UserRelationFilter.fromJson(
              json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationWhereInputToJson(
    ConversationWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  writeNotNull('chat', instance.chat?.toJson());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

ConversationOrderByWithRelationInput
    _$ConversationOrderByWithRelationInputFromJson(Map<String, dynamic> json) =>
        ConversationOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
          message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
          sentDate: $enumDecodeNullable(_$SortOrderEnumMap, json['sent_date']),
          chat: json['chat'] == null
              ? null
              : ChatOrderByWithRelationInput.fromJson(
                  json['chat'] as Map<String, dynamic>),
          sender: json['sender'] == null
              ? null
              : UserOrderByWithRelationInput.fromJson(
                  json['sender'] as Map<String, dynamic>),
          receiver: json['receiver'] == null
              ? null
              : UserOrderByWithRelationInput.fromJson(
                  json['receiver'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationOrderByWithRelationInputToJson(
    ConversationOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  writeNotNull('message', _$SortOrderEnumMap[instance.message]);
  writeNotNull('sent_date', _$SortOrderEnumMap[instance.sentDate]);
  writeNotNull('chat', instance.chat?.toJson());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

ConversationWhereUniqueInput _$ConversationWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ConversationWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ConversationWhereUniqueInputToJson(
    ConversationWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

ConversationOrderByWithAggregationInput
    _$ConversationOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        ConversationOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
          message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
          sentDate: $enumDecodeNullable(_$SortOrderEnumMap, json['sent_date']),
          $count: json['_count'] == null
              ? null
              : ConversationCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : ConversationAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : ConversationMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : ConversationMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : ConversationSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationOrderByWithAggregationInputToJson(
    ConversationOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  writeNotNull('message', _$SortOrderEnumMap[instance.message]);
  writeNotNull('sent_date', _$SortOrderEnumMap[instance.sentDate]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ConversationScalarWhereWithAggregatesInput
    _$ConversationScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        ConversationScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationScalarWhereWithAggregatesInputToJson(
    ConversationScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      sendChats: json['send_chats'] == null
          ? null
          : ConversationCreateNestedManyWithoutSenderInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationCreateNestedManyWithoutReceiverInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'name': instance.name,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as int?,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      sendChats: json['send_chats'] == null
          ? null
          : ConversationUncheckedCreateNestedManyWithoutSenderInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationUncheckedCreateNestedManyWithoutReceiverInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['password'] = instance.password;
  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      sendChats: json['send_chats'] == null
          ? null
          : ConversationUpdateManyWithoutSenderNestedInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationUpdateManyWithoutReceiverNestedInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      sendChats: json['send_chats'] == null
          ? null
          : ConversationUncheckedUpdateManyWithoutSenderNestedInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationUncheckedUpdateManyWithoutReceiverNestedInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('send_chats', instance.sendChats?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as int?,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['password'] = instance.password;
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

AuthenticationCreateInput _$AuthenticationCreateInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationCreateInput(
      userId: json['user_id'] as int,
      accessToken: json['access_token'] as String,
      expireDate:
          const DateTimeJsonConverter().fromJson(json['expire_date'] as String),
    );

Map<String, dynamic> _$AuthenticationCreateInputToJson(
        AuthenticationCreateInput instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'access_token': instance.accessToken,
      'expire_date': const DateTimeJsonConverter().toJson(instance.expireDate),
    };

AuthenticationUncheckedCreateInput _$AuthenticationUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationUncheckedCreateInput(
      id: json['id'] as int?,
      userId: json['user_id'] as int,
      accessToken: json['access_token'] as String,
      expireDate:
          const DateTimeJsonConverter().fromJson(json['expire_date'] as String),
    );

Map<String, dynamic> _$AuthenticationUncheckedCreateInputToJson(
    AuthenticationUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['user_id'] = instance.userId;
  val['access_token'] = instance.accessToken;
  val['expire_date'] =
      const DateTimeJsonConverter().toJson(instance.expireDate);
  return val;
}

AuthenticationUpdateInput _$AuthenticationUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationUpdateInput(
      userId: json['user_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      accessToken: json['access_token'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['access_token'] as Map<String, dynamic>),
      expireDate: json['expire_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['expire_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationUpdateInputToJson(
    AuthenticationUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

AuthenticationUncheckedUpdateInput _$AuthenticationUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      accessToken: json['access_token'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['access_token'] as Map<String, dynamic>),
      expireDate: json['expire_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['expire_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationUncheckedUpdateInputToJson(
    AuthenticationUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

AuthenticationCreateManyInput _$AuthenticationCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AuthenticationCreateManyInput(
      id: json['id'] as int?,
      userId: json['user_id'] as int,
      accessToken: json['access_token'] as String,
      expireDate:
          const DateTimeJsonConverter().fromJson(json['expire_date'] as String),
    );

Map<String, dynamic> _$AuthenticationCreateManyInputToJson(
    AuthenticationCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['user_id'] = instance.userId;
  val['access_token'] = instance.accessToken;
  val['expire_date'] =
      const DateTimeJsonConverter().toJson(instance.expireDate);
  return val;
}

AuthenticationUpdateManyMutationInput
    _$AuthenticationUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationUpdateManyMutationInput(
          userId: json['user_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          accessToken: json['access_token'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['access_token'] as Map<String, dynamic>),
          expireDate: json['expire_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['expire_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AuthenticationUpdateManyMutationInputToJson(
    AuthenticationUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

AuthenticationUncheckedUpdateManyInput
    _$AuthenticationUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          userId: json['user_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          accessToken: json['access_token'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['access_token'] as Map<String, dynamic>),
          expireDate: json['expire_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['expire_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AuthenticationUncheckedUpdateManyInputToJson(
    AuthenticationUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('access_token', instance.accessToken?.toJson());
  writeNotNull('expire_date', instance.expireDate?.toJson());
  return val;
}

ChatCreateInput _$ChatCreateInputFromJson(Map<String, dynamic> json) =>
    ChatCreateInput(
      name: json['name'] as String,
      createdDate: const DateTimeJsonConverter()
          .fromJson(json['created_date'] as String),
      conversation: json['conversation'] == null
          ? null
          : ConversationCreateNestedManyWithoutChatInput.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCreateInputToJson(ChatCreateInput instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'created_date': const DateTimeJsonConverter().toJson(instance.createdDate),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatUncheckedCreateInput _$ChatUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ChatUncheckedCreateInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      createdDate: const DateTimeJsonConverter()
          .fromJson(json['created_date'] as String),
      conversation: json['conversation'] == null
          ? null
          : ConversationUncheckedCreateNestedManyWithoutChatInput.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUncheckedCreateInputToJson(
    ChatUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['created_date'] =
      const DateTimeJsonConverter().toJson(instance.createdDate);
  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatUpdateInput _$ChatUpdateInputFromJson(Map<String, dynamic> json) =>
    ChatUpdateInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created_date'] as Map<String, dynamic>),
      conversation: json['conversation'] == null
          ? null
          : ConversationUpdateManyWithoutChatNestedInput.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUpdateInputToJson(ChatUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatUncheckedUpdateInput _$ChatUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ChatUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created_date'] as Map<String, dynamic>),
      conversation: json['conversation'] == null
          ? null
          : ConversationUncheckedUpdateManyWithoutChatNestedInput.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUncheckedUpdateInputToJson(
    ChatUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  writeNotNull('conversation', instance.conversation?.toJson());
  return val;
}

ChatCreateManyInput _$ChatCreateManyInputFromJson(Map<String, dynamic> json) =>
    ChatCreateManyInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      createdDate: const DateTimeJsonConverter()
          .fromJson(json['created_date'] as String),
    );

Map<String, dynamic> _$ChatCreateManyInputToJson(ChatCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['created_date'] =
      const DateTimeJsonConverter().toJson(instance.createdDate);
  return val;
}

ChatUpdateManyMutationInput _$ChatUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    ChatUpdateManyMutationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUpdateManyMutationInputToJson(
    ChatUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  return val;
}

ChatUncheckedUpdateManyInput _$ChatUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    ChatUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUncheckedUpdateManyInputToJson(
    ChatUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  return val;
}

ConversationCreateInput _$ConversationCreateInputFromJson(
        Map<String, dynamic> json) =>
    ConversationCreateInput(
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
      chat: ChatCreateNestedOneWithoutConversationInput.fromJson(
          json['chat'] as Map<String, dynamic>),
      sender: UserCreateNestedOneWithoutSendChatsInput.fromJson(
          json['sender'] as Map<String, dynamic>),
      receiver: UserCreateNestedOneWithoutReceiveChatsInput.fromJson(
          json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationCreateInputToJson(
        ConversationCreateInput instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sent_date': const DateTimeJsonConverter().toJson(instance.sentDate),
      'chat': instance.chat.toJson(),
      'sender': instance.sender.toJson(),
      'receiver': instance.receiver.toJson(),
    };

ConversationUncheckedCreateInput _$ConversationUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ConversationUncheckedCreateInput(
      id: json['id'] as int?,
      chatId: json['chat_id'] as int,
      senderId: json['sender_id'] as int,
      receiverId: json['receiver_id'] as int,
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
    );

Map<String, dynamic> _$ConversationUncheckedCreateInputToJson(
    ConversationUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['sender_id'] = instance.senderId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationUpdateInput _$ConversationUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ConversationUpdateInput(
      message: json['message'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['message'] as Map<String, dynamic>),
      sentDate: json['sent_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['sent_date'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : ChatUpdateOneRequiredWithoutConversationNestedInput.fromJson(
              json['chat'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : UserUpdateOneRequiredWithoutSendChatsNestedInput.fromJson(
              json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : UserUpdateOneRequiredWithoutReceiveChatsNestedInput.fromJson(
              json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationUpdateInputToJson(
    ConversationUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  writeNotNull('chat', instance.chat?.toJson());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

ConversationUncheckedUpdateInput _$ConversationUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ConversationUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      chatId: json['chat_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['chat_id'] as Map<String, dynamic>),
      senderId: json['sender_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['sender_id'] as Map<String, dynamic>),
      receiverId: json['receiver_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['receiver_id'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['message'] as Map<String, dynamic>),
      sentDate: json['sent_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['sent_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationUncheckedUpdateInputToJson(
    ConversationUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationCreateManyInput _$ConversationCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    ConversationCreateManyInput(
      id: json['id'] as int?,
      chatId: json['chat_id'] as int,
      senderId: json['sender_id'] as int,
      receiverId: json['receiver_id'] as int,
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
    );

Map<String, dynamic> _$ConversationCreateManyInputToJson(
    ConversationCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['sender_id'] = instance.senderId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationUpdateManyMutationInput
    _$ConversationUpdateManyMutationInputFromJson(Map<String, dynamic> json) =>
        ConversationUpdateManyMutationInput(
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateManyMutationInputToJson(
    ConversationUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUncheckedUpdateManyInput
    _$ConversationUncheckedUpdateManyInputFromJson(Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUncheckedUpdateManyInputToJson(
    ConversationUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

ConversationListRelationFilter _$ConversationListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ConversationListRelationFilter(
      every: json['every'] == null
          ? null
          : ConversationWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : ConversationWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ConversationWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationListRelationFilterToJson(
    ConversationListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

ConversationOrderByRelationAggregateInput
    _$ConversationOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ConversationOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$ConversationOrderByRelationAggregateInputToJson(
    ConversationOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserAvgOrderByAggregateInput _$UserAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserAvgOrderByAggregateInputToJson(
    UserAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserSumOrderByAggregateInput _$UserSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserSumOrderByAggregateInputToJson(
    UserSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

AuthenticationCountOrderByAggregateInput
    _$AuthenticationCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
          accessToken:
              $enumDecodeNullable(_$SortOrderEnumMap, json['access_token']),
          expireDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['expire_date']),
        );

Map<String, dynamic> _$AuthenticationCountOrderByAggregateInputToJson(
    AuthenticationCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('access_token', _$SortOrderEnumMap[instance.accessToken]);
  writeNotNull('expire_date', _$SortOrderEnumMap[instance.expireDate]);
  return val;
}

AuthenticationAvgOrderByAggregateInput
    _$AuthenticationAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
        );

Map<String, dynamic> _$AuthenticationAvgOrderByAggregateInputToJson(
    AuthenticationAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

AuthenticationMaxOrderByAggregateInput
    _$AuthenticationMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
          accessToken:
              $enumDecodeNullable(_$SortOrderEnumMap, json['access_token']),
          expireDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['expire_date']),
        );

Map<String, dynamic> _$AuthenticationMaxOrderByAggregateInputToJson(
    AuthenticationMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('access_token', _$SortOrderEnumMap[instance.accessToken]);
  writeNotNull('expire_date', _$SortOrderEnumMap[instance.expireDate]);
  return val;
}

AuthenticationMinOrderByAggregateInput
    _$AuthenticationMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
          accessToken:
              $enumDecodeNullable(_$SortOrderEnumMap, json['access_token']),
          expireDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['expire_date']),
        );

Map<String, dynamic> _$AuthenticationMinOrderByAggregateInputToJson(
    AuthenticationMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('access_token', _$SortOrderEnumMap[instance.accessToken]);
  writeNotNull('expire_date', _$SortOrderEnumMap[instance.expireDate]);
  return val;
}

AuthenticationSumOrderByAggregateInput
    _$AuthenticationSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AuthenticationSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
        );

Map<String, dynamic> _$AuthenticationSumOrderByAggregateInputToJson(
    AuthenticationSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeWithAggregatesFilterToJson(
    DateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

ChatCountOrderByAggregateInput _$ChatCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ChatCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['created_date']),
    );

Map<String, dynamic> _$ChatCountOrderByAggregateInputToJson(
    ChatCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('created_date', _$SortOrderEnumMap[instance.createdDate]);
  return val;
}

ChatAvgOrderByAggregateInput _$ChatAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ChatAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$ChatAvgOrderByAggregateInputToJson(
    ChatAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

ChatMaxOrderByAggregateInput _$ChatMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ChatMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['created_date']),
    );

Map<String, dynamic> _$ChatMaxOrderByAggregateInputToJson(
    ChatMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('created_date', _$SortOrderEnumMap[instance.createdDate]);
  return val;
}

ChatMinOrderByAggregateInput _$ChatMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ChatMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['created_date']),
    );

Map<String, dynamic> _$ChatMinOrderByAggregateInputToJson(
    ChatMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('created_date', _$SortOrderEnumMap[instance.createdDate]);
  return val;
}

ChatSumOrderByAggregateInput _$ChatSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ChatSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$ChatSumOrderByAggregateInputToJson(
    ChatSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

ChatRelationFilter _$ChatRelationFilterFromJson(Map<String, dynamic> json) =>
    ChatRelationFilter(
      $is: json['is'] == null
          ? null
          : ChatWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ChatWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatRelationFilterToJson(ChatRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) =>
    UserRelationFilter(
      $is: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRelationFilterToJson(UserRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

ConversationCountOrderByAggregateInput
    _$ConversationCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
          message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
          sentDate: $enumDecodeNullable(_$SortOrderEnumMap, json['sent_date']),
        );

Map<String, dynamic> _$ConversationCountOrderByAggregateInputToJson(
    ConversationCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  writeNotNull('message', _$SortOrderEnumMap[instance.message]);
  writeNotNull('sent_date', _$SortOrderEnumMap[instance.sentDate]);
  return val;
}

ConversationAvgOrderByAggregateInput
    _$ConversationAvgOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ConversationAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
        );

Map<String, dynamic> _$ConversationAvgOrderByAggregateInputToJson(
    ConversationAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  return val;
}

ConversationMaxOrderByAggregateInput
    _$ConversationMaxOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ConversationMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
          message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
          sentDate: $enumDecodeNullable(_$SortOrderEnumMap, json['sent_date']),
        );

Map<String, dynamic> _$ConversationMaxOrderByAggregateInputToJson(
    ConversationMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  writeNotNull('message', _$SortOrderEnumMap[instance.message]);
  writeNotNull('sent_date', _$SortOrderEnumMap[instance.sentDate]);
  return val;
}

ConversationMinOrderByAggregateInput
    _$ConversationMinOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ConversationMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
          message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
          sentDate: $enumDecodeNullable(_$SortOrderEnumMap, json['sent_date']),
        );

Map<String, dynamic> _$ConversationMinOrderByAggregateInputToJson(
    ConversationMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  writeNotNull('message', _$SortOrderEnumMap[instance.message]);
  writeNotNull('sent_date', _$SortOrderEnumMap[instance.sentDate]);
  return val;
}

ConversationSumOrderByAggregateInput
    _$ConversationSumOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ConversationSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          chatId: $enumDecodeNullable(_$SortOrderEnumMap, json['chat_id']),
          senderId: $enumDecodeNullable(_$SortOrderEnumMap, json['sender_id']),
          receiverId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['receiver_id']),
        );

Map<String, dynamic> _$ConversationSumOrderByAggregateInputToJson(
    ConversationSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('chat_id', _$SortOrderEnumMap[instance.chatId]);
  writeNotNull('sender_id', _$SortOrderEnumMap[instance.senderId]);
  writeNotNull('receiver_id', _$SortOrderEnumMap[instance.receiverId]);
  return val;
}

ConversationCreateNestedManyWithoutSenderInput
    _$ConversationCreateNestedManyWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateNestedManyWithoutSenderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManySenderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationCreateNestedManyWithoutSenderInputToJson(
    ConversationCreateNestedManyWithoutSenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ConversationCreateNestedManyWithoutReceiverInput
    _$ConversationCreateNestedManyWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateNestedManyWithoutReceiverInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyReceiverInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationCreateNestedManyWithoutReceiverInputToJson(
    ConversationCreateNestedManyWithoutReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUncheckedCreateNestedManyWithoutSenderInput
    _$ConversationUncheckedCreateNestedManyWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateNestedManyWithoutSenderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManySenderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedCreateNestedManyWithoutSenderInputToJson(
        ConversationUncheckedCreateNestedManyWithoutSenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUncheckedCreateNestedManyWithoutReceiverInput
    _$ConversationUncheckedCreateNestedManyWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateNestedManyWithoutReceiverInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyReceiverInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedCreateNestedManyWithoutReceiverInputToJson(
        ConversationUncheckedCreateNestedManyWithoutReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

ConversationUpdateManyWithoutSenderNestedInput
    _$ConversationUpdateManyWithoutSenderNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithoutSenderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManySenderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationUpdateManyWithoutSenderNestedInputToJson(
    ConversationUpdateManyWithoutSenderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUpdateManyWithoutReceiverNestedInput
    _$ConversationUpdateManyWithoutReceiverNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithoutReceiverNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyReceiverInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationUpdateManyWithoutReceiverNestedInputToJson(
    ConversationUpdateManyWithoutReceiverNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

ConversationUncheckedUpdateManyWithoutSenderNestedInput
    _$ConversationUncheckedUpdateManyWithoutSenderNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutSenderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManySenderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutSenderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutSenderNestedInputToJson(
        ConversationUncheckedUpdateManyWithoutSenderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUncheckedUpdateManyWithoutReceiverNestedInput
    _$ConversationUncheckedUpdateManyWithoutReceiverNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutReceiverNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyReceiverInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutReceiverNestedInputToJson(
        ConversationUncheckedUpdateManyWithoutReceiverNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    DateTimeFieldUpdateOperationsInput(
      set: _$JsonConverterFromJson<String, DateTime>(
          json['set'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeFieldUpdateOperationsInputToJson(
    DateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

ConversationCreateNestedManyWithoutChatInput
    _$ConversationCreateNestedManyWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateNestedManyWithoutChatInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyChatInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationCreateNestedManyWithoutChatInputToJson(
    ConversationCreateNestedManyWithoutChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUncheckedCreateNestedManyWithoutChatInput
    _$ConversationUncheckedCreateNestedManyWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateNestedManyWithoutChatInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyChatInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedCreateNestedManyWithoutChatInputToJson(
        ConversationUncheckedCreateNestedManyWithoutChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUpdateManyWithoutChatNestedInput
    _$ConversationUpdateManyWithoutChatNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithoutChatNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyChatInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ConversationUpdateManyWithoutChatNestedInputToJson(
    ConversationUpdateManyWithoutChatNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ConversationUncheckedUpdateManyWithoutChatNestedInput
    _$ConversationUncheckedUpdateManyWithoutChatNestedInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutChatNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ConversationCreateWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ConversationCreateOrConnectWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ConversationUpsertWithWhereUniqueWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ConversationCreateManyChatInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ConversationWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateWithWhereUniqueWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ConversationUpdateManyWithWhereWithoutChatInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutChatNestedInputToJson(
        ConversationUncheckedUpdateManyWithoutChatNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ChatCreateNestedOneWithoutConversationInput
    _$ChatCreateNestedOneWithoutConversationInputFromJson(
            Map<String, dynamic> json) =>
        ChatCreateNestedOneWithoutConversationInput(
          create: json['create'] == null
              ? null
              : ChatCreateWithoutConversationInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ChatCreateOrConnectWithoutConversationInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ChatWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ChatCreateNestedOneWithoutConversationInputToJson(
    ChatCreateNestedOneWithoutConversationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

UserCreateNestedOneWithoutSendChatsInput
    _$UserCreateNestedOneWithoutSendChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateNestedOneWithoutSendChatsInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutSendChatsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutSendChatsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateNestedOneWithoutSendChatsInputToJson(
    UserCreateNestedOneWithoutSendChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

UserCreateNestedOneWithoutReceiveChatsInput
    _$UserCreateNestedOneWithoutReceiveChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateNestedOneWithoutReceiveChatsInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutReceiveChatsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutReceiveChatsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateNestedOneWithoutReceiveChatsInputToJson(
    UserCreateNestedOneWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

ChatUpdateOneRequiredWithoutConversationNestedInput
    _$ChatUpdateOneRequiredWithoutConversationNestedInputFromJson(
            Map<String, dynamic> json) =>
        ChatUpdateOneRequiredWithoutConversationNestedInput(
          create: json['create'] == null
              ? null
              : ChatCreateWithoutConversationInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ChatCreateOrConnectWithoutConversationInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : ChatUpsertWithoutConversationInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ChatWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : ChatUpdateWithoutConversationInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ChatUpdateOneRequiredWithoutConversationNestedInputToJson(
        ChatUpdateOneRequiredWithoutConversationNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

UserUpdateOneRequiredWithoutSendChatsNestedInput
    _$UserUpdateOneRequiredWithoutSendChatsNestedInputFromJson(
            Map<String, dynamic> json) =>
        UserUpdateOneRequiredWithoutSendChatsNestedInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutSendChatsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutSendChatsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UserUpsertWithoutSendChatsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UserUpdateWithoutSendChatsInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUpdateOneRequiredWithoutSendChatsNestedInputToJson(
    UserUpdateOneRequiredWithoutSendChatsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

UserUpdateOneRequiredWithoutReceiveChatsNestedInput
    _$UserUpdateOneRequiredWithoutReceiveChatsNestedInputFromJson(
            Map<String, dynamic> json) =>
        UserUpdateOneRequiredWithoutReceiveChatsNestedInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutReceiveChatsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutReceiveChatsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UserUpsertWithoutReceiveChatsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UserUpdateWithoutReceiveChatsInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$UserUpdateOneRequiredWithoutReceiveChatsNestedInputToJson(
        UserUpdateOneRequiredWithoutReceiveChatsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
    NestedDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeWithAggregatesFilterToJson(
    NestedDateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

ConversationCreateWithoutSenderInput
    _$ConversationCreateWithoutSenderInputFromJson(Map<String, dynamic> json) =>
        ConversationCreateWithoutSenderInput(
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
          chat: ChatCreateNestedOneWithoutConversationInput.fromJson(
              json['chat'] as Map<String, dynamic>),
          receiver: UserCreateNestedOneWithoutReceiveChatsInput.fromJson(
              json['receiver'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationCreateWithoutSenderInputToJson(
        ConversationCreateWithoutSenderInput instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sent_date': const DateTimeJsonConverter().toJson(instance.sentDate),
      'chat': instance.chat.toJson(),
      'receiver': instance.receiver.toJson(),
    };

ConversationUncheckedCreateWithoutSenderInput
    _$ConversationUncheckedCreateWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateWithoutSenderInput(
          id: json['id'] as int?,
          chatId: json['chat_id'] as int,
          receiverId: json['receiver_id'] as int,
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
        );

Map<String, dynamic> _$ConversationUncheckedCreateWithoutSenderInputToJson(
    ConversationUncheckedCreateWithoutSenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationCreateOrConnectWithoutSenderInput
    _$ConversationCreateOrConnectWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateOrConnectWithoutSenderInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ConversationCreateWithoutSenderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationCreateOrConnectWithoutSenderInputToJson(
        ConversationCreateOrConnectWithoutSenderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ConversationCreateManySenderInputEnvelope
    _$ConversationCreateManySenderInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateManySenderInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ConversationCreateManySenderInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ConversationCreateManySenderInputEnvelopeToJson(
    ConversationCreateManySenderInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

ConversationCreateWithoutReceiverInput
    _$ConversationCreateWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateWithoutReceiverInput(
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
          chat: ChatCreateNestedOneWithoutConversationInput.fromJson(
              json['chat'] as Map<String, dynamic>),
          sender: UserCreateNestedOneWithoutSendChatsInput.fromJson(
              json['sender'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationCreateWithoutReceiverInputToJson(
        ConversationCreateWithoutReceiverInput instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sent_date': const DateTimeJsonConverter().toJson(instance.sentDate),
      'chat': instance.chat.toJson(),
      'sender': instance.sender.toJson(),
    };

ConversationUncheckedCreateWithoutReceiverInput
    _$ConversationUncheckedCreateWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateWithoutReceiverInput(
          id: json['id'] as int?,
          chatId: json['chat_id'] as int,
          senderId: json['sender_id'] as int,
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
        );

Map<String, dynamic> _$ConversationUncheckedCreateWithoutReceiverInputToJson(
    ConversationUncheckedCreateWithoutReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['sender_id'] = instance.senderId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationCreateOrConnectWithoutReceiverInput
    _$ConversationCreateOrConnectWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateOrConnectWithoutReceiverInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ConversationCreateWithoutReceiverInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationCreateOrConnectWithoutReceiverInputToJson(
        ConversationCreateOrConnectWithoutReceiverInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ConversationCreateManyReceiverInputEnvelope
    _$ConversationCreateManyReceiverInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateManyReceiverInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ConversationCreateManyReceiverInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ConversationCreateManyReceiverInputEnvelopeToJson(
    ConversationCreateManyReceiverInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

ConversationUpsertWithWhereUniqueWithoutSenderInput
    _$ConversationUpsertWithWhereUniqueWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpsertWithWhereUniqueWithoutSenderInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ConversationUpdateWithoutSenderInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ConversationCreateWithoutSenderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUpsertWithWhereUniqueWithoutSenderInputToJson(
            ConversationUpsertWithWhereUniqueWithoutSenderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

ConversationUpdateWithWhereUniqueWithoutSenderInput
    _$ConversationUpdateWithWhereUniqueWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateWithWhereUniqueWithoutSenderInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateWithoutSenderInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUpdateWithWhereUniqueWithoutSenderInputToJson(
            ConversationUpdateWithWhereUniqueWithoutSenderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ConversationUpdateManyWithWhereWithoutSenderInput
    _$ConversationUpdateManyWithWhereWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithWhereWithoutSenderInput(
          where: ConversationScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateManyWithWhereWithoutSenderInputToJson(
        ConversationUpdateManyWithWhereWithoutSenderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ConversationScalarWhereInput _$ConversationScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    ConversationScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          ConversationScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      chatId: json['chat_id'] == null
          ? null
          : IntFilter.fromJson(json['chat_id'] as Map<String, dynamic>),
      senderId: json['sender_id'] == null
          ? null
          : IntFilter.fromJson(json['sender_id'] as Map<String, dynamic>),
      receiverId: json['receiver_id'] == null
          ? null
          : IntFilter.fromJson(json['receiver_id'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : StringFilter.fromJson(json['message'] as Map<String, dynamic>),
      sentDate: json['sent_date'] == null
          ? null
          : DateTimeFilter.fromJson(json['sent_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationScalarWhereInputToJson(
    ConversationScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUpsertWithWhereUniqueWithoutReceiverInput
    _$ConversationUpsertWithWhereUniqueWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpsertWithWhereUniqueWithoutReceiverInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ConversationUpdateWithoutReceiverInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ConversationCreateWithoutReceiverInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUpsertWithWhereUniqueWithoutReceiverInputToJson(
            ConversationUpsertWithWhereUniqueWithoutReceiverInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

ConversationUpdateWithWhereUniqueWithoutReceiverInput
    _$ConversationUpdateWithWhereUniqueWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateWithWhereUniqueWithoutReceiverInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateWithoutReceiverInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUpdateWithWhereUniqueWithoutReceiverInputToJson(
            ConversationUpdateWithWhereUniqueWithoutReceiverInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ConversationUpdateManyWithWhereWithoutReceiverInput
    _$ConversationUpdateManyWithWhereWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithWhereWithoutReceiverInput(
          where: ConversationScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUpdateManyWithWhereWithoutReceiverInputToJson(
            ConversationUpdateManyWithWhereWithoutReceiverInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ConversationCreateWithoutChatInput _$ConversationCreateWithoutChatInputFromJson(
        Map<String, dynamic> json) =>
    ConversationCreateWithoutChatInput(
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
      sender: UserCreateNestedOneWithoutSendChatsInput.fromJson(
          json['sender'] as Map<String, dynamic>),
      receiver: UserCreateNestedOneWithoutReceiveChatsInput.fromJson(
          json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationCreateWithoutChatInputToJson(
        ConversationCreateWithoutChatInput instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sent_date': const DateTimeJsonConverter().toJson(instance.sentDate),
      'sender': instance.sender.toJson(),
      'receiver': instance.receiver.toJson(),
    };

ConversationUncheckedCreateWithoutChatInput
    _$ConversationUncheckedCreateWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedCreateWithoutChatInput(
          id: json['id'] as int?,
          senderId: json['sender_id'] as int,
          receiverId: json['receiver_id'] as int,
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
        );

Map<String, dynamic> _$ConversationUncheckedCreateWithoutChatInputToJson(
    ConversationUncheckedCreateWithoutChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['sender_id'] = instance.senderId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationCreateOrConnectWithoutChatInput
    _$ConversationCreateOrConnectWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateOrConnectWithoutChatInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ConversationCreateWithoutChatInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationCreateOrConnectWithoutChatInputToJson(
        ConversationCreateOrConnectWithoutChatInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ConversationCreateManyChatInputEnvelope
    _$ConversationCreateManyChatInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ConversationCreateManyChatInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ConversationCreateManyChatInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ConversationCreateManyChatInputEnvelopeToJson(
    ConversationCreateManyChatInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

ConversationUpsertWithWhereUniqueWithoutChatInput
    _$ConversationUpsertWithWhereUniqueWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpsertWithWhereUniqueWithoutChatInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ConversationUpdateWithoutChatInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ConversationCreateWithoutChatInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpsertWithWhereUniqueWithoutChatInputToJson(
        ConversationUpsertWithWhereUniqueWithoutChatInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

ConversationUpdateWithWhereUniqueWithoutChatInput
    _$ConversationUpdateWithWhereUniqueWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateWithWhereUniqueWithoutChatInput(
          where: ConversationWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateWithoutChatInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateWithWhereUniqueWithoutChatInputToJson(
        ConversationUpdateWithWhereUniqueWithoutChatInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ConversationUpdateManyWithWhereWithoutChatInput
    _$ConversationUpdateManyWithWhereWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateManyWithWhereWithoutChatInput(
          where: ConversationScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ConversationUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateManyWithWhereWithoutChatInputToJson(
        ConversationUpdateManyWithWhereWithoutChatInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ChatCreateWithoutConversationInput _$ChatCreateWithoutConversationInputFromJson(
        Map<String, dynamic> json) =>
    ChatCreateWithoutConversationInput(
      name: json['name'] as String,
      createdDate: const DateTimeJsonConverter()
          .fromJson(json['created_date'] as String),
    );

Map<String, dynamic> _$ChatCreateWithoutConversationInputToJson(
        ChatCreateWithoutConversationInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'created_date':
          const DateTimeJsonConverter().toJson(instance.createdDate),
    };

ChatUncheckedCreateWithoutConversationInput
    _$ChatUncheckedCreateWithoutConversationInputFromJson(
            Map<String, dynamic> json) =>
        ChatUncheckedCreateWithoutConversationInput(
          id: json['id'] as int?,
          name: json['name'] as String,
          createdDate: const DateTimeJsonConverter()
              .fromJson(json['created_date'] as String),
        );

Map<String, dynamic> _$ChatUncheckedCreateWithoutConversationInputToJson(
    ChatUncheckedCreateWithoutConversationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['created_date'] =
      const DateTimeJsonConverter().toJson(instance.createdDate);
  return val;
}

ChatCreateOrConnectWithoutConversationInput
    _$ChatCreateOrConnectWithoutConversationInputFromJson(
            Map<String, dynamic> json) =>
        ChatCreateOrConnectWithoutConversationInput(
          where: ChatWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ChatCreateWithoutConversationInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ChatCreateOrConnectWithoutConversationInputToJson(
        ChatCreateOrConnectWithoutConversationInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UserCreateWithoutSendChatsInput _$UserCreateWithoutSendChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserCreateWithoutSendChatsInput(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationCreateNestedManyWithoutReceiverInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateWithoutSendChatsInputToJson(
    UserCreateWithoutSendChatsInput instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'name': instance.name,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUncheckedCreateWithoutSendChatsInput
    _$UserUncheckedCreateWithoutSendChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedCreateWithoutSendChatsInput(
          id: json['id'] as int?,
          email: json['email'] as String,
          name: json['name'] as String,
          password: json['password'] as String,
          receiveChats: json['receive_chats'] == null
              ? null
              : ConversationUncheckedCreateNestedManyWithoutReceiverInput
                  .fromJson(json['receive_chats'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedCreateWithoutSendChatsInputToJson(
    UserUncheckedCreateWithoutSendChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['password'] = instance.password;
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserCreateOrConnectWithoutSendChatsInput
    _$UserCreateOrConnectWithoutSendChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateOrConnectWithoutSendChatsInput(
          where: UserWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UserCreateWithoutSendChatsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateOrConnectWithoutSendChatsInputToJson(
        UserCreateOrConnectWithoutSendChatsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UserCreateWithoutReceiveChatsInput _$UserCreateWithoutReceiveChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserCreateWithoutReceiveChatsInput(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      sendChats: json['send_chats'] == null
          ? null
          : ConversationCreateNestedManyWithoutSenderInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateWithoutReceiveChatsInputToJson(
    UserCreateWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'name': instance.name,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('send_chats', instance.sendChats?.toJson());
  return val;
}

UserUncheckedCreateWithoutReceiveChatsInput
    _$UserUncheckedCreateWithoutReceiveChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedCreateWithoutReceiveChatsInput(
          id: json['id'] as int?,
          email: json['email'] as String,
          name: json['name'] as String,
          password: json['password'] as String,
          sendChats: json['send_chats'] == null
              ? null
              : ConversationUncheckedCreateNestedManyWithoutSenderInput
                  .fromJson(json['send_chats'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedCreateWithoutReceiveChatsInputToJson(
    UserUncheckedCreateWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['password'] = instance.password;
  writeNotNull('send_chats', instance.sendChats?.toJson());
  return val;
}

UserCreateOrConnectWithoutReceiveChatsInput
    _$UserCreateOrConnectWithoutReceiveChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateOrConnectWithoutReceiveChatsInput(
          where: UserWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UserCreateWithoutReceiveChatsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateOrConnectWithoutReceiveChatsInputToJson(
        UserCreateOrConnectWithoutReceiveChatsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ChatUpsertWithoutConversationInput _$ChatUpsertWithoutConversationInputFromJson(
        Map<String, dynamic> json) =>
    ChatUpsertWithoutConversationInput(
      update: ChatUpdateWithoutConversationInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: ChatCreateWithoutConversationInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUpsertWithoutConversationInputToJson(
        ChatUpsertWithoutConversationInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

ChatUpdateWithoutConversationInput _$ChatUpdateWithoutConversationInputFromJson(
        Map<String, dynamic> json) =>
    ChatUpdateWithoutConversationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      createdDate: json['created_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUpdateWithoutConversationInputToJson(
    ChatUpdateWithoutConversationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  return val;
}

ChatUncheckedUpdateWithoutConversationInput
    _$ChatUncheckedUpdateWithoutConversationInputFromJson(
            Map<String, dynamic> json) =>
        ChatUncheckedUpdateWithoutConversationInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          createdDate: json['created_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ChatUncheckedUpdateWithoutConversationInputToJson(
    ChatUncheckedUpdateWithoutConversationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('created_date', instance.createdDate?.toJson());
  return val;
}

UserUpsertWithoutSendChatsInput _$UserUpsertWithoutSendChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserUpsertWithoutSendChatsInput(
      update: UserUpdateWithoutSendChatsInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UserCreateWithoutSendChatsInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpsertWithoutSendChatsInputToJson(
        UserUpsertWithoutSendChatsInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UserUpdateWithoutSendChatsInput _$UserUpdateWithoutSendChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateWithoutSendChatsInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      receiveChats: json['receive_chats'] == null
          ? null
          : ConversationUpdateManyWithoutReceiverNestedInput.fromJson(
              json['receive_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateWithoutSendChatsInputToJson(
    UserUpdateWithoutSendChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUncheckedUpdateWithoutSendChatsInput
    _$UserUncheckedUpdateWithoutSendChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedUpdateWithoutSendChatsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          receiveChats: json['receive_chats'] == null
              ? null
              : ConversationUncheckedUpdateManyWithoutReceiverNestedInput
                  .fromJson(json['receive_chats'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedUpdateWithoutSendChatsInputToJson(
    UserUncheckedUpdateWithoutSendChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('receive_chats', instance.receiveChats?.toJson());
  return val;
}

UserUpsertWithoutReceiveChatsInput _$UserUpsertWithoutReceiveChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserUpsertWithoutReceiveChatsInput(
      update: UserUpdateWithoutReceiveChatsInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UserCreateWithoutReceiveChatsInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpsertWithoutReceiveChatsInputToJson(
        UserUpsertWithoutReceiveChatsInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UserUpdateWithoutReceiveChatsInput _$UserUpdateWithoutReceiveChatsInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateWithoutReceiveChatsInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      sendChats: json['send_chats'] == null
          ? null
          : ConversationUpdateManyWithoutSenderNestedInput.fromJson(
              json['send_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateWithoutReceiveChatsInputToJson(
    UserUpdateWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('send_chats', instance.sendChats?.toJson());
  return val;
}

UserUncheckedUpdateWithoutReceiveChatsInput
    _$UserUncheckedUpdateWithoutReceiveChatsInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedUpdateWithoutReceiveChatsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          sendChats: json['send_chats'] == null
              ? null
              : ConversationUncheckedUpdateManyWithoutSenderNestedInput
                  .fromJson(json['send_chats'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedUpdateWithoutReceiveChatsInputToJson(
    UserUncheckedUpdateWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('send_chats', instance.sendChats?.toJson());
  return val;
}

ConversationCreateManySenderInput _$ConversationCreateManySenderInputFromJson(
        Map<String, dynamic> json) =>
    ConversationCreateManySenderInput(
      id: json['id'] as int?,
      chatId: json['chat_id'] as int,
      receiverId: json['receiver_id'] as int,
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
    );

Map<String, dynamic> _$ConversationCreateManySenderInputToJson(
    ConversationCreateManySenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationCreateManyReceiverInput
    _$ConversationCreateManyReceiverInputFromJson(Map<String, dynamic> json) =>
        ConversationCreateManyReceiverInput(
          id: json['id'] as int?,
          chatId: json['chat_id'] as int,
          senderId: json['sender_id'] as int,
          message: json['message'] as String,
          sentDate: const DateTimeJsonConverter()
              .fromJson(json['sent_date'] as String),
        );

Map<String, dynamic> _$ConversationCreateManyReceiverInputToJson(
    ConversationCreateManyReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['chat_id'] = instance.chatId;
  val['sender_id'] = instance.senderId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationUpdateWithoutSenderInput
    _$ConversationUpdateWithoutSenderInputFromJson(Map<String, dynamic> json) =>
        ConversationUpdateWithoutSenderInput(
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
          chat: json['chat'] == null
              ? null
              : ChatUpdateOneRequiredWithoutConversationNestedInput.fromJson(
                  json['chat'] as Map<String, dynamic>),
          receiver: json['receiver'] == null
              ? null
              : UserUpdateOneRequiredWithoutReceiveChatsNestedInput.fromJson(
                  json['receiver'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateWithoutSenderInputToJson(
    ConversationUpdateWithoutSenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  writeNotNull('chat', instance.chat?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

ConversationUncheckedUpdateWithoutSenderInput
    _$ConversationUncheckedUpdateWithoutSenderInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateWithoutSenderInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUncheckedUpdateWithoutSenderInputToJson(
    ConversationUncheckedUpdateWithoutSenderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUncheckedUpdateManyWithoutSendChatsInput
    _$ConversationUncheckedUpdateManyWithoutSendChatsInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutSendChatsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutSendChatsInputToJson(
        ConversationUncheckedUpdateManyWithoutSendChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUpdateWithoutReceiverInput
    _$ConversationUpdateWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUpdateWithoutReceiverInput(
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
          chat: json['chat'] == null
              ? null
              : ChatUpdateOneRequiredWithoutConversationNestedInput.fromJson(
                  json['chat'] as Map<String, dynamic>),
          sender: json['sender'] == null
              ? null
              : UserUpdateOneRequiredWithoutSendChatsNestedInput.fromJson(
                  json['sender'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUpdateWithoutReceiverInputToJson(
    ConversationUpdateWithoutReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  writeNotNull('chat', instance.chat?.toJson());
  writeNotNull('sender', instance.sender?.toJson());
  return val;
}

ConversationUncheckedUpdateWithoutReceiverInput
    _$ConversationUncheckedUpdateWithoutReceiverInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateWithoutReceiverInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUncheckedUpdateWithoutReceiverInputToJson(
    ConversationUncheckedUpdateWithoutReceiverInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUncheckedUpdateManyWithoutReceiveChatsInput
    _$ConversationUncheckedUpdateManyWithoutReceiveChatsInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutReceiveChatsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          chatId: json['chat_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['chat_id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutReceiveChatsInputToJson(
        ConversationUncheckedUpdateManyWithoutReceiveChatsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('chat_id', instance.chatId?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationCreateManyChatInput _$ConversationCreateManyChatInputFromJson(
        Map<String, dynamic> json) =>
    ConversationCreateManyChatInput(
      id: json['id'] as int?,
      senderId: json['sender_id'] as int,
      receiverId: json['receiver_id'] as int,
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
    );

Map<String, dynamic> _$ConversationCreateManyChatInputToJson(
    ConversationCreateManyChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['sender_id'] = instance.senderId;
  val['receiver_id'] = instance.receiverId;
  val['message'] = instance.message;
  val['sent_date'] = const DateTimeJsonConverter().toJson(instance.sentDate);
  return val;
}

ConversationUpdateWithoutChatInput _$ConversationUpdateWithoutChatInputFromJson(
        Map<String, dynamic> json) =>
    ConversationUpdateWithoutChatInput(
      message: json['message'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['message'] as Map<String, dynamic>),
      sentDate: json['sent_date'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['sent_date'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : UserUpdateOneRequiredWithoutSendChatsNestedInput.fromJson(
              json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : UserUpdateOneRequiredWithoutReceiveChatsNestedInput.fromJson(
              json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationUpdateWithoutChatInputToJson(
    ConversationUpdateWithoutChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

ConversationUncheckedUpdateWithoutChatInput
    _$ConversationUncheckedUpdateWithoutChatInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateWithoutChatInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ConversationUncheckedUpdateWithoutChatInputToJson(
    ConversationUncheckedUpdateWithoutChatInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

ConversationUncheckedUpdateManyWithoutConversationInput
    _$ConversationUncheckedUpdateManyWithoutConversationInputFromJson(
            Map<String, dynamic> json) =>
        ConversationUncheckedUpdateManyWithoutConversationInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          senderId: json['sender_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['sender_id'] as Map<String, dynamic>),
          receiverId: json['receiver_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['receiver_id'] as Map<String, dynamic>),
          message: json['message'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['message'] as Map<String, dynamic>),
          sentDate: json['sent_date'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['sent_date'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ConversationUncheckedUpdateManyWithoutConversationInputToJson(
        ConversationUncheckedUpdateManyWithoutConversationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('sender_id', instance.senderId?.toJson());
  writeNotNull('receiver_id', instance.receiverId?.toJson());
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('sent_date', instance.sentDate?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) =>
    Authentication(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      accessToken: json['access_token'] as String,
      expireDate:
          const DateTimeJsonConverter().fromJson(json['expire_date'] as String),
    );

Map<String, dynamic> _$AuthenticationToJson(Authentication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'access_token': instance.accessToken,
      'expire_date': const DateTimeJsonConverter().toJson(instance.expireDate),
    };

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      id: json['id'] as int,
      name: json['name'] as String,
      createdDate: const DateTimeJsonConverter()
          .fromJson(json['created_date'] as String),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_date':
          const DateTimeJsonConverter().toJson(instance.createdDate),
    };

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      id: json['id'] as int,
      chatId: json['chat_id'] as int,
      senderId: json['sender_id'] as int,
      receiverId: json['receiver_id'] as int,
      message: json['message'] as String,
      sentDate:
          const DateTimeJsonConverter().fromJson(json['sent_date'] as String),
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'message': instance.message,
      'sent_date': const DateTimeJsonConverter().toJson(instance.sentDate),
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('name', instance.name);
  writeNotNull('password', instance.password);
  return val;
}

AuthenticationGroupByOutputType _$AuthenticationGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthenticationGroupByOutputType(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      accessToken: json['access_token'] as String?,
      expireDate: _$JsonConverterFromJson<String, DateTime>(
          json['expire_date'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$AuthenticationGroupByOutputTypeToJson(
    AuthenticationGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('access_token', instance.accessToken);
  writeNotNull(
      'expire_date',
      _$JsonConverterToJson<String, DateTime>(
          instance.expireDate, const DateTimeJsonConverter().toJson));
  return val;
}

ChatGroupByOutputType _$ChatGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ChatGroupByOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdDate: _$JsonConverterFromJson<String, DateTime>(
          json['created_date'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$ChatGroupByOutputTypeToJson(
    ChatGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull(
      'created_date',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdDate, const DateTimeJsonConverter().toJson));
  return val;
}

ConversationGroupByOutputType _$ConversationGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ConversationGroupByOutputType(
      id: json['id'] as int?,
      chatId: json['chat_id'] as int?,
      senderId: json['sender_id'] as int?,
      receiverId: json['receiver_id'] as int?,
      message: json['message'] as String?,
      sentDate: _$JsonConverterFromJson<String, DateTime>(
          json['sent_date'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$ConversationGroupByOutputTypeToJson(
    ConversationGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('chat_id', instance.chatId);
  writeNotNull('sender_id', instance.senderId);
  writeNotNull('receiver_id', instance.receiverId);
  writeNotNull('message', instance.message);
  writeNotNull(
      'sent_date',
      _$JsonConverterToJson<String, DateTime>(
          instance.sentDate, const DateTimeJsonConverter().toJson));
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}

import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModal {
  String? sender, receiver, message;
  bool read;
  Timestamp? timestamp;

  ChatModal._(
      {required this.sender,
        required this.receiver,
        required this.message,
        required this.read,
        required this.timestamp});

  factory ChatModal(Map json) {
    return ChatModal._(
        sender: json['sender'],
        receiver: json['receiver'],
        message: json['message'],
        read: json['read']??false,
        timestamp: json['timestamp']);
  }

  Map<String, dynamic> toMap(ChatModal chat) {
    return {
      'sender': chat.sender,
      'receiver': chat.receiver,
      'message': chat.message,
      'timestamp': chat.timestamp,
      'read':chat.read,
    };
  }
}
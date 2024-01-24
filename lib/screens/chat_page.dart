import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseexample/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final Message message;
  final User user;

  ChatPage({super.key, required this.message, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: message.userID == user.uid
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color:
                  message.userID == user.uid ? Colors.green : Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomLeft: message.userID == user.uid
                    ? const Radius.circular(15)
                    : Radius.zero,
                bottomRight: message.userID == user.uid
                    ? Radius.zero
                    : const Radius.circular(15),
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Text(
              message.message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

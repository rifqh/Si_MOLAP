// lib/comment_list_screen.dart
import 'package:flutter/material.dart';

class Comment {
  final String user;
  final String text;
  final DateTime timestamp; // Tambahkan timestamp

  Comment({
    required this.user,
    required this.text,
    required this.timestamp,
  });
}

class CommentWidget extends StatelessWidget {
  final Comment comment;

  CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    // Format waktu
    String formattedTime =
        "${comment.timestamp.hour}:${comment.timestamp.minute.toString().padLeft(2, '0')}";

    return ListTile(
      horizontalTitleGap: 10,
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      leading: Image(
        image: AssetImage("images/person.png"),
        height: 32,
      ),
      title: Row(
        children: [
          Text(comment.user, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            width: 7,
          ),
          Text(formattedTime, style: TextStyle(color: Colors.grey)),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(child: Text(comment.text)),
        ],
      ),
    );
  }
}

class CommentListScreen extends StatelessWidget {
  final List<Comment> comments = [
    Comment(
        user: 'Alice',
        text: 'Ini komentar pertama.',
        timestamp: DateTime.now().subtract(Duration(minutes: 5))),
    Comment(
        user: 'Bob',
        text: 'Ini komentar kedua.',
        timestamp: DateTime.now().subtract(Duration(minutes: 15))),
    Comment(
        user: 'Charlie',
        text: 'Ini komentar ketiga.',
        timestamp: DateTime.now().subtract(Duration(minutes: 30))),
    // Tambahkan lebih banyak komentar di sini jika diinginkan
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:
            comments.map((comment) => CommentWidget(comment: comment)).toList(),
      ),
    );
  }
}

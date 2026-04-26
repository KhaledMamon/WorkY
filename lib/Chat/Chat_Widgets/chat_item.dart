import 'package:flutter/material.dart';
import 'package:work_y/Chat/active_chat.dart';

class ChatItem extends StatelessWidget {
  final String name;
  final String imag;
  final String? imagb;
  final String msg;
  final String time;
  final bool unread;
  final Color color;
  final bool isGroup;

  const ChatItem({
    super.key,
    required this.name,
    required this.imag,
    this.imagb,
    required this.msg,
    required this.time,
    required this.unread,
    required this.color,
    this.isGroup = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActiveChat(userName: name,imag:imag,imagb:imagb,isGroup:isGroup)),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: isGroup ? Colors.blue[50] : Colors.grey[200],
              backgroundImage: isGroup
                  ? NetworkImage(imagb!)
                  : NetworkImage(imag),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          color: color,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    msg,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ),
            if (unread)
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:work_y/Chat/Chat_Widgets/massage_bubble.dart';

class ActiveChat extends StatefulWidget {
  final String userName;
  final String imag;
  final String? imagb;
  final bool isGroup;

  const ActiveChat({
    super.key,
    required this.userName,
    required this.imag,
    this.imagb,
    this.isGroup = false,
  });

  @override
  State<ActiveChat> createState() => _ActiveChatState();
}

class _ActiveChatState extends State<ActiveChat> {
  late TextEditingController messageController;
  late ScrollController scrollController;
  final List<Map<String, dynamic>> messages = [
    {'text': "Hi! How's the project going?", 'isMe': false},
    {
      'text': 'Everything is on track. I\'ll send the update soon.',
      'isMe': true,
    },
    {'text': "Okay", 'isMe': false},
  ];

  @override
  void initState() {
    super.initState();
    messageController = TextEditingController();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3244E6);

    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage: widget.isGroup
                  ? NetworkImage(widget.imagb!)
                  : NetworkImage(widget.imag),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam_outlined, color: Color(0xFF5F6E7D)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call_outlined, color: Color(0xFF5F6E7D)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF5F6E7D)),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              controller: scrollController,
              padding: const EdgeInsets.all(20),
              children: [
                ...messages.map(
                  (msg) => MassageBubble(
                    text: msg['text'],
                    isMe: msg['isMe'],
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F5F9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextField(
                            controller: messageController,
                            decoration: const InputDecoration(
                              hintText: 'Message...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),

                        IconButton(
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                GestureDetector(
                  onTap: () {
                    if (messageController.text.isNotEmpty) {
                      setState(() {
                        messages.add({
                          'text': messageController.text,
                          'isMe': true,
                        });
                      });
                      messageController.clear();
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withValues(alpha: 0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

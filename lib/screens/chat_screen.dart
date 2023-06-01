import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String recipientName;
  final String recipientPic;

  ChatPage({required this.recipientName, required this.recipientPic});
  static const screenRoute = '/chat-screen';

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  List<Message> _messages = [];

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String recipientName = args['recipientName'];
    final String recipientPic = args['recipientPic'];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(recipientPic),
            ),
            SizedBox(width: 10),
            Text(recipientName),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.recipientPic),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                reverse: false,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    message: _messages[index],
                  );
                },
              ),
            ),
            Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'Enter a message',
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      _sendMessage();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _messages.add(
          Message(
            senderName: 'User',
            messageText: _textController.text,
            time: DateTime.now(),
          ),
        );
      });
      _textController.clear();
    }
  }
}

class ChatBubble extends StatelessWidget {
  final Message message;

  ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            message.time.toString(),
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[600],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 8),
            Text(
              message.senderName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Text(
                      message.messageText,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Message {
  final String senderName;
  final String messageText;
  final DateTime time;

  Message(
      {required this.senderName,
      required this.messageText,
      required this.time});
}

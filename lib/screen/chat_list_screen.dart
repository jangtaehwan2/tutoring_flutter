import 'package:flutter/material.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ChatOneToOne(),
          ChatManyToMany(),
          ChatOneToOne(),
          ChatManyToMany(),
          ChatOneToOne(),
          ChatOneToOne(),
          ChatManyToMany(),
          ChatOneToOne(),
          ChatOneToOne(),
          ChatManyToMany(),
        ],
      ),
    );
  }
}

class ChatOneToOne extends StatefulWidget {
  const ChatOneToOne({Key? key}) : super(key: key);

  @override
  State<ChatOneToOne> createState() => _ChatOneToOneState();
}

class _ChatOneToOneState extends State<ChatOneToOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  color: Colors.black12,
                  width: 1.5
              )
          )
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.people_alt_rounded, size: 60, ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('1:1 자바튜터링(5)', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )),
              Text('5개의 1:1 채팅방이 존재합니다.'),
            ],
          ),
          // Icon(Icons.arrow_forward_ios),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
          }, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}

class ChatManyToMany extends StatefulWidget {
  const ChatManyToMany({Key? key}) : super(key: key);

  @override
  State<ChatManyToMany> createState() => _ChatManyToManyState();
}

class _ChatManyToManyState extends State<ChatManyToMany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  color: Colors.black12,
                  width: 1.5
              )
          )
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.people_alt_rounded, size: 60, ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('그룹 파이썬 튜터링(5/5)', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )),
              Text('tutor : 파이썬은...'),
            ],
          ),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
          }, icon: Icon(Icons.arrow_forward_ios)),

        ],
      ),
    );
  }
}
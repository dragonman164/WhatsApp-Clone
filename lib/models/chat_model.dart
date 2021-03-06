import 'package:flutter/foundation.dart';

class ChatModel{
  final String name,message,lastSeen,quote;
  DateTime time;
  List<String>chatMessages;

  var hasStatus = false;
  ChatModel({@required this.name,
    @required this.message,
    @required this.time,
    @required this.lastSeen,
    @required this.chatMessages,
    @required this.quote,
    this.hasStatus,
  });
  void addMessage(String text){
    chatMessages.insert(0,text);
  }

}
List<ChatModel> dummyData = [
  ChatModel(
      name: "A",
      message: "Mai Chor Hoon",
      time : DateTime.now(),
    lastSeen: "Online",
    chatMessages: [
      "Hello, chor, kaisa hai??",
      "Mai deekh hoon",
    ],
    quote: "I love hacker",
    hasStatus: true,
  ),
  ChatModel(
      name: "B",
      message: "Mai Chor Hoon",
      time :  DateTime.now(),
      lastSeen: "Online",
      chatMessages: [
        "Hello, chor, kaisa hai??",
        "Mai deekh hoon",
      ],
    quote: "I love hacker",

  ),
  ChatModel(
      name: "C",
      message: "Mai Chor Hoon",
      lastSeen: "Online",
      time :  DateTime.now(),
      chatMessages: [
        "Hello, chor, kaisa hai??",
        "Mai deekh hoon",
      ],
    quote: "I love hacker",

  ),
  ChatModel(
      name: "D",
      message: "Mai Chor Hoon",
      lastSeen: "Online",
      time :  DateTime.now(),
      chatMessages: [
        "Hello, chor, kaisa hai??",
        "Mai deekh hoon",

      ],
    quote: "I love hacker",
    hasStatus: true,

  ),
  ChatModel(
      name: "E",
      message: "Mai Chor Hoon",
      lastSeen: "Online",
      time : DateTime.now(),
      chatMessages: [
        "Hello, chor, kaisa hai??",
        "Mai deekh hoon",
      ],
    quote: "I love hacker",

  )
];
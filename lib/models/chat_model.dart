class ChatModel{
  final String name,message,time,avatarUrl;


  ChatModel({this.name,this.message,this.time,this.avatarUrl});


}
List<ChatModel> dummyData = [
  ChatModel(
      name: "A",
      message: "Mai Chor Hoon",
      time : "${DateTime.now().hour}:${DateTime.now().minute}",
      avatarUrl: "https://opendatasecurity.io/wp-content/uploads/2017/05/can-you-hire-a-hacker-ods.jpg"
  ),
  ChatModel(
      name: "B",
      message: "Mai Chor Hoon",
      time :  "${DateTime.now().hour}:${DateTime.now().minute}",
      avatarUrl: "https://opendatasecurity.io/wp-content/uploads/2017/05/can-you-hire-a-hacker-ods.jpg"
  ),
  ChatModel(
      name: "C",
      message: "Mai Chor Hoon",
      time :  "${DateTime.now().hour}:${DateTime.now().minute}",
      avatarUrl: "https://opendatasecurity.io/wp-content/uploads/2017/05/can-you-hire-a-hacker-ods.jpg"
  ),
  ChatModel(
      name: "D",
      message: "Mai Chor Hoon",
      time :  "${DateTime.now().hour}:${DateTime.now().minute}",
      avatarUrl: "https://opendatasecurity.io/wp-content/uploads/2017/05/can-you-hire-a-hacker-ods.jpg"
  ),
  ChatModel(
      name: "E",
      message: "Mai Chor Hoon",
      time : "${DateTime.now().hour}:${DateTime.now().minute}",
      avatarUrl: "https://opendatasecurity.io/wp-content/uploads/2017/05/can-you-hire-a-hacker-ods.jpg"
  )
];
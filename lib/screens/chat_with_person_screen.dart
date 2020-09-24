import 'package:flutter/material.dart';
import '../widgets/chat_widget.dart';
import '../models/chat_model.dart';

class ChatWithPerson extends StatefulWidget {
  static String routeName = '/chatWithPerson';

  @override
  _ChatWithPersonState createState() => _ChatWithPersonState();
}

class _ChatWithPersonState extends State<ChatWithPerson> {
  TextEditingController _textEditingController = TextEditingController();
  ChatModel _chatModel;
  var _changeFloatingactionbutton = false;

  void receiveArguments(context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, ChatModel>;
    _chatModel = routeArgs['chat'];
  }

  @override
  void initState() {
    // TODO: implement initState
    if (_textEditingController.text.length == 0) setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    receiveArguments(context);
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 20,
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Colors.grey[200],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Divider(
                    height: 7,
                  ),
                  Text(
                    _chatModel.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _chatModel.lastSeen,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Icon(
                Icons.videocam,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Icon(
                Icons.call,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                    child: Text('View Contact'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('Media,links, and docs'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('Search'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('Mute notifications'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('Wallpaper'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('More'),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/chatbackground.png'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(10.0),
                  reverse: true,
                  itemBuilder: (_, int index) =>
                      ChatWidget(_chatModel.chatMessages[index]),
                  itemCount: _chatModel.chatMessages.length,
                ),
              ),
              Divider(
                height: 20,
              ),
              Container(
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.insert_emoticon,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Type a message',
                              border: InputBorder.none),
                          controller: _textEditingController,
                          onChanged: (_) {
                            if (_textEditingController.text.length != 0)
                              setState(() {
                                _changeFloatingactionbutton = true;
                              });
                          },
                          onSubmitted: (String str) {
                            if (str.length != 0)
                              setState(() {
                                _chatModel.addMessage(str);
                                _changeFloatingactionbutton = false;
                              });
                            _textEditingController.clear();
                          },
                        ),
                      ),
                      Icon(
                        Icons.attachment,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_textEditingController.text.length!=0)
            _chatModel.addMessage(_textEditingController.text);
          _textEditingController.clear();
          setState(() {});
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          _changeFloatingactionbutton && _textEditingController.text.length != 0
              ? Icons.send
              : Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}

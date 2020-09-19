import 'package:flutter/material.dart';
import '../screens/camera_screen.dart';
import '../screens/call_screen.dart';
import '../screens/chat_screen.dart';
import '../screens/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  IconData _currentButton;

  void changeButton(){
   setState(() {
     switch(_tabController.index){
       case 1: _currentButton=Icons.message; break;
       case 2: _currentButton=Icons.camera_alt ; break;
       case 3: _currentButton=Icons.add_call; break;
     }
   });

  }

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this,length: 4);
    _tabController.addListener(changeButton);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
        controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),

          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search Button Pressed');
              }
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {

            print('Menu Button Pressed');
          }
        )

        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),



        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(_currentButton,color: Colors.white,),
        onPressed: ()=>print('Open Chats'),
      ),
    );
  }
}

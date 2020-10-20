import 'package:flutter/material.dart';
import '../widgets/camera_widget.dart';
import '../widgets/call_widget.dart';
import '../widgets/chatwidget.dart';
import '../widgets/status_widget.dart';
import '../widgets/PopUpMenuItems.dart';

class WhatsAppHome extends StatefulWidget {
  static String routeName = '/';
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  IconData _currentButton;
  TextEditingController _textEditingController;
  var _searchPressed = false;


  void changeButton(){
   setState(() {
     switch(_tabController.index){
       case 1: _currentButton=Icons.message;break;
       case 2: _currentButton=Icons.camera_alt ; break;
       case 3: _currentButton=Icons.add_call; break;
     }
   });

  }

  Widget changePopUpMenu (){

      switch(_tabController.index){
        case 1: return PopChats();  break;
        case 2:  return PopStatus(); break;
        case 3: return PopCalls(); break;
      }
      return Icon(Icons.more_vert);


  }



  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this,length: 4);
    _tabController.addListener(changePopUpMenu);
    _tabController.addListener(changeButton);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _searchPressed?AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _textEditingController,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            labelText: 'Search...',
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {
          _searchPressed = false;
          setState(() {

          });
        },
        color: Theme.of(context).primaryColor,),
      ):AppBar(
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
                _searchPressed = true;
                setState(() {});
              }
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
       changePopUpMenu(),

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
        onPressed: ()=>print('Floating Action Button Pressed'),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/chat.dart';
import 'package:whats_app_clone/theme/dark_mode.dart';
import 'package:whats_app_clone/widgets/mobile/custom_icon.dart';
import 'package:whats_app_clone/widgets/mobile/person_image.dart';
import 'package:whats_app_clone/widgets/mobile/person_name.dart';
class MobileChatScreen extends StatelessWidget {
   MobileChatScreen({Key? key,required this.personName,required this.imageUrl}) : super(key: key);
  String personName;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(height*0.09),
        child: AppBar(
          backgroundColor: appBarColor,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 8),
                child: PersonImage(imageUrl: imageUrl, width: 50, height: 50),
              ),
              Flexible(child: PersonName(personName: personName)),
            ],
          ),
          actions: [
            CustomIconButton(iconData: Icons.call, onPressed: null),
            CustomIconButton(iconData: Icons.more_vert, onPressed: null),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: chats.length ,
                itemBuilder: (context,index){
                  return  Column(
                    crossAxisAlignment:chats[index]['isMe']==false ?
                    CrossAxisAlignment.start:
                    CrossAxisAlignment.end ,
                    children: [
                      Container(
                        decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft:chats[index]['isMe']==false ?
                          const Radius.circular(0):
                          const Radius.circular(25),
                            topRight:chats[index]['isMe']==false ?
                            const Radius.circular(25):
                            const Radius.circular(0),
                          bottomLeft: const Radius.circular(25),
                          bottomRight: const Radius.circular(25),
                        ),
                          color:chats[index]['isMe']==false ? Colors.grey:Colors.teal,
                      ),
                        margin:const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        width: width*0.55,
                        height: height*0.15,
                        // color:chats[index]['isMe']==false ? Colors.grey:Colors.teal,
                        child: chats[index]['isMe']==false ?
                        Text(chats[index]['him']):
                        Text(chats[index]['me']),
                      ),
                    ],
                  );
                }
            ),
          ),
          SizedBox(
            height: height*0.09,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: SizedBox(
                    width: width*0.75,height: height*0.09,
                    child:   TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                        hintText: 'Type a message',
                        hintStyle: textStyle,
                        fillColor: Colors.grey.withOpacity(0.5),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child:  FloatingActionButton(heroTag: 1,onPressed: null,child: Icon(Icons.send),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

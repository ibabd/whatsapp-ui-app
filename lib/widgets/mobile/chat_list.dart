import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/data.dart';
import 'package:whats_app_clone/screens/mobile_chat_screen.dart';
import 'package:whats_app_clone/theme/dark_mode.dart';
import 'package:whats_app_clone/widgets/mobile/person_image.dart';
import 'package:whats_app_clone/widgets/mobile/person_name.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return ListView.builder(
        itemCount: randomInfo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:15),
            child: SizedBox(
              height:height*0.13 ,
              child:Column(
                children: [
                  ListTile(
                    onTap: (){
                    // navigator with animation
                      Navigator.of(context).push(PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder: (context,animation,_){
                        return FadeTransition(
                            opacity: animation,
                            child: MobileChatScreen(
                              imageUrl: randomInfo[index]['image'].toString(),
                              personName: randomInfo[index]['name'].toString(),

                            ),
                        );
                      }));
                    },
                    leading: PersonImage(
                      imageUrl: randomInfo[index]['image'].toString(),
                      width: 60,
                      height: 60,
                    ),
                    title: PersonName(
                        personName:  randomInfo[index]['name'].toString()),
                    subtitle: Text(
                      randomInfo[index]['message'].toString(),
                      style: messageStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(randomInfo[index]['time'].toString(),style: textStyle,),
                          ),
                        ),
                        Expanded(
                          child: CircleAvatar(
                            radius: 14,
                            child: Text(randomInfo[index]['unred'].toString(),style: textStyle,),
                            backgroundColor: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(
                     height: height*0.01,
                   ),
                   //indent مقدار البعد عن الborder
                   Divider(color: Colors.grey.withOpacity(0.3),indent: 15,endIndent:15 ,),
                ],
              )
            ),
          );
        });
  }
}

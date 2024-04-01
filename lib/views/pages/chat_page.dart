import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/views/widgets/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static String chatRoute = 'ChatPage';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ScrollController conroller = ScrollController();
  TextEditingController controller = TextEditingController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy('createdAt').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Message> messagesList = [];
            for (var element in snapshot.data!.docs) {
              messagesList.add(Message.fromJson(element.data()));
            }
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kPrimaryColor,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/scholar.png',
                      height: 50,
                    ),
                    const Text(
                      'Chat Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: conroller,
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return ChatBubble(
                          message: messagesList[index].message.toString(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (value) {
                        messages.add(
                          {'message': value, 'createdAt': DateTime.now()},
                        );
                        controller.clear();
                        conroller.animateTo(
                          conroller.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            messages.add(
                              {
                                'message': controller.text,
                                'createdAt': DateTime.now()
                              },
                            );
                            controller.clear();
                            conroller.animateTo(
                              conroller.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.fastOutSlowIn,
                            );
                          },
                          icon: const Icon(
                            Icons.send,
                            color: kPrimaryColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                        hintText: 'Type a message',
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
        });
  }
}

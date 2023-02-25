import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatdata.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              // backgroundImage: NetworkImage(chatdata[i].pic),
              backgroundImage: AssetImage(chatdata[i].pic),
            ),
            title: Text(chatdata[i].name),
            subtitle: Text(chatdata[i].msg),
            trailing: Text(chatdata[i].time),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';

class call extends StatelessWidget {
  const call({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  // color: Colors.green,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 0, 163, 65),
                  ),
                  child: Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                ),
                title: Text("Create call link"),
                subtitle: Text("Shate a link for your WhatsApp call"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 310),
          child: Text(
            "Recent",
            style: TextStyle(
              color: Color.fromARGB(255, 127, 126, 126),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: calldata.length,
            itemBuilder: (c, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(calldata[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(calldata[i].name),
                      Icon(
                        i % 2 == 0 ? Icons.call : Icons.videocam,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                          i % 4 == 1
                              ? Icons.arrow_outward_rounded
                              : Icons.call_missed,
                          color: Colors.green),
                      Text(calldata[i].time),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

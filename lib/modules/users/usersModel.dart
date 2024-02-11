import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UsersModel extends StatelessWidget {
  List<UsersModelData> users = [
    UsersModelData(id: 1, name: 'ahmed farrag', phone: '+01157932907'),
    UsersModelData(id: 2, name: 'addy', phone: '+0157652148'),
    UsersModelData(id: 3, name: 'farrag', phone: '+088647845'),
    UsersModelData(id: 4, name: 'emy mohamed', phone: '+01246498656'),
    UsersModelData(id: 1, name: 'ahmed farrag', phone: '+01157932907'),
    UsersModelData(id: 2, name: 'addy', phone: '+0157652148'),
    UsersModelData(id: 3, name: 'farrag', phone: '+088647845'),
    UsersModelData(id: 4, name: 'emy mohamed', phone: '+01246498656'),
  ];

  UsersModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('users')),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
          itemCount: users.length),
    );
  }
}

Widget buildUserItem(UsersModelData user) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '${user.phone}',
                style: const TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );

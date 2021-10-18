import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCreayedListsDialog extends StatelessWidget {
  const UserCreayedListsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'قوائم البحث'),
              Tab(text: 'قوائم الاّيات'),
            ],
          ),
          body: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'إنشاء قائمة',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              onPressed: () {}),
        ),
      ),
    );
  }
}

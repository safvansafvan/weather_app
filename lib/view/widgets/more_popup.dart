import 'package:flutter/material.dart';
import 'package:share/share.dart';

class MorePopUp extends StatelessWidget {
  const MorePopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          onTap: () async {
            await share("com.example.wether");
          },
          child: const Text("Share"),
        ),
        PopupMenuItem(
          onTap: () {},
          child: const Text("Settings"),
        ),
      ],
    );
  }

  Future<void> share(content) async {
    await Share.share(content);
  }
}

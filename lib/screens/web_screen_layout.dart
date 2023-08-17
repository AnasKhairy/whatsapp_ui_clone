import 'package:flutter/material.dart';
import 'package:whats_app_clone/widgets/chat_list.dart';
import 'package:whats_app_clone/widgets/contacts_list.dart';
import 'package:whats_app_clone/widgets/web_chat_app_bar.dart';
import 'package:whats_app_clone/widgets/web_profile_bar.dart';
import 'package:whats_app_clone/widgets/web_search_bar.dart';

import '../widgets/web_chat_input.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Web profile bar
                  WebProfileBar(),
                  // Web search bar
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              children: [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                WebChatInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

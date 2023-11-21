import 'package:flutter/material.dart';
import 'package:mobile_ui/models/user_model.dart';
import 'package:mobile_ui/views/chat_tile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          "New Orleans Firefire...",
          style: TextStyle(
              fontSize: 25, fontFamily: "Poppins", fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: user2.isStarred
                          ? const Alignment(-1, 0)
                          : const Alignment(1, 0),
                      child: ChatTileView(
                        fontSize: user2.textFontSize,
                        userName: user2.userName,
                        title: user2.text,
                        isStarred: user2.isStarred,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: user1.isStarred
                          ? const Alignment(-1, 0)
                          : const Alignment(0, 10),
                      child: ChatTileView(
                        fontSize: user1.textFontSize,
                        userName: user1.userName,
                        title: user1.text,
                        isStarred: user1.isStarred,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: user1.isStarred
                          ? const Alignment(-1, 0)
                          : const Alignment(0, 10),
                      child: ChatTileView(
                        fontSize: user1.textFontSize,
                        userName: user1.userName,
                        title: user1.text,
                        isStarred: user1.isStarred,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: user1.isStarred
                          ? const Alignment(-1, 0)
                          : const Alignment(0, 10),
                      child: ChatTileView(
                        fontSize: user1.textFontSize,
                        userName: user1.userName,
                        title: user1.text,
                        isStarred: user1.isStarred,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: user1.isStarred
                          ? const Alignment(-1, 0)
                          : const Alignment(0, 10),
                      child: ChatTileView(
                        fontSize: user1.textFontSize,
                        userName: user1.userName,
                        title: user1.text,
                        isStarred: user1.isStarred,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 100,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Image(
                      image: AssetImage("assets/icons/ic_back_down.png"),
                      height: 13,
                    ),
                    const Image(
                      image: AssetImage("assets/icons/ic_subtraact.png"),
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                    ),
                    const Image(
                      image: AssetImage("assets/icons/ic_camera.png"),
                      height: 25,
                    ),
                    const Image(
                      image: AssetImage("assets/icons/ic_voice_message.png"),
                      height: 25,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

const User user1 = User(
    userName: "Son Yu",
    text: "Hallo ihr lieben,schön, dass es euch gut geht!",
    textFontSize: 35,
    isStarred: true);

const User user2 = User(
    userName: "Abdulloh",
    text: "Hallo ihr lieben,schön, dass es euch gut geht!",
    textFontSize: 35,
    isStarred: false);

import 'package:flutter/material.dart';

class ChatTileView extends StatelessWidget {
  final int fontSize;
  final String userName;
  final String title;
  final bool isStarred;

  const ChatTileView({
    super.key,
    required this.fontSize,
    required this.userName,
    required this.title,
    required this.isStarred,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.175,
      width: width * 0.75,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade100.withOpacity(0.1),
            offset: const Offset(10, 0),
            spreadRadius: 15,
          ),
          BoxShadow(
            color: Colors.green.shade100.withOpacity(0.1),
            offset: const Offset(0, 10),
            spreadRadius: 15,
          ),
          BoxShadow(
            color: Colors.green.shade100.withOpacity(0.1),
            offset: const Offset(-10, 0),
            spreadRadius: 15,
          ),
          BoxShadow(
            color: Colors.green.shade100.withOpacity(0.1),
            offset: const Offset(0, -10),
            spreadRadius: 15,
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: isStarred ? Colors.pink.shade100 : Colors.green.shade100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Row(
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.green.shade300,
                      fontFamily: "Inter",
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "$fontSize",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Color(0xffEE35AF),
                      fontFamily: "Inter",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "100",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.grey,
                      fontFamily: "Inter",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  isStarred
                      ? const Image(
                          image: AssetImage("assets/icons/ic_star.png"),
                          height: 15,
                        )
                      : const Text(""),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: height * 0.135,
            width: width * 0.75,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Inter",
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: height * 0.025,
                          width: width * 0.25,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Center(
                              child: Text(
                                "willkommen",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "${DateTime.now().hour} : ${DateTime.now().minute}",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

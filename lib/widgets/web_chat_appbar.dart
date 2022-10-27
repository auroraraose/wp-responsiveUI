import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://1.bp.blogspot.com/-nHHOlpl2QXk/Xq5kC5drIhI/AAAAAAAAQic/F8LyvYCJCXEEN4cMe3fLt9QdvLMtKCJhQCLcBGAsYHQ/s1600/no-dp-images%2B%25289%2529.jpg',
                ),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: PopupMenuButton(
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      children: const [
                        Icon(
                          Icons.offline_bolt,
                          color: Colors.black54,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Item01'),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:youtube_clone/vidoModel.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<VideoModel> video = [
    VideoModel(
      videoThubmnail:
          "https://images.pexels.com/photos/3928536/pexels-photo-3928536.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      title: "Behind-the-scenes video for Youtube",
      channelName: "CodeWithSaugat",
      views: "50M views",
      uploadTime: "2 hours ago",
      channelImage:
          "https://yt3.ggpht.com/a/AATXAJwgPFqfo8x9OXWqUIuXlX4uitKJT2rCnVm--oSJgbA=s288-c-k-c0xffffffff-no-rj-mo",
    ),
    VideoModel(
      videoThubmnail:
          "https://www.pyramidions.com/blog/wp-content/uploads/2019/05/Flutter-apps.png",
      title: "Learn Flutter with Saugat",
      channelName: "CodeWithSaugat",
      views: "99M views",
      uploadTime: "1 Day ago",
      channelImage:
          "https://yt3.ggpht.com/a/AATXAJwGzjl_nO9ileuBnsIQUhCF8S33BJ56j-Mp1wV9_g=s176-c-k-c0x00ffffff-no-rj-mo",
    ),
    VideoModel(
      videoThubmnail:
          "https://images.pexels.com/photos/34407/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      title: "Learn flutter from scratch free in Youtube ",
      channelName: "CodeWithSaugat",
      views: "50M views",
      uploadTime: "2 hours ago",
      channelImage:
          "https://yt3.ggpht.com/a/AATXAJwGzjl_nO9ileuBnsIQUhCF8S33BJ56j-Mp1wV9_g=s176-c-k-c0x00ffffff-no-rj-mo",
    ),
    VideoModel(
      videoThubmnail:
          "https://i.pinimg.com/originals/3d/a0/97/3da097bfde49aef8e7b0aa00b7ac3ae1.png",
      title: "Flutter Development Company In Nepal",
      channelName: "CodeWithSaugat",
      views: "50M views",
      uploadTime: "3 months ago",
      channelImage:
          "https://yt3.ggpht.com/a/AATXAJwgPFqfo8x9OXWqUIuXlX4uitKJT2rCnVm--oSJgbA=s288-c-k-c0xffffffff-no-rj-mo",
    ),
    VideoModel(
      videoThubmnail:
          "https://www.mediaan.com/wp-content/uploads/2019/08/flutter-vs-react-native.jpg",
      title: "Flutter vs React!Which One Is Best?",
      channelName: "CodeWithSaugat",
      views: "20M views",
      uploadTime: "23hours ago",
      channelImage:
          "https://yt3.ggpht.com/a/AATXAJzNfvJ02vLWy52VQ6UOAuHYnqGCOmsR-3WRCjxM=s176-c-k-c0xffffffff-no-rj-mo",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: video.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                ClipRRect(
                  child: Image(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    fit: BoxFit.cover,
                    image: NetworkImage(video[index].videoThubmnail),
                  ),
                ),
                SizedBox(height: 5),
                ListTile(
                  trailing:
                      IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image(
                        image: NetworkImage(video[index].channelImage),
                      )),
                  title: Text(video[index].title),
                  subtitle: Text(
                    "${video[index].channelName}.${video[index].views}.${video[index].uploadTime}",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(
                  color: Colors.white54,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

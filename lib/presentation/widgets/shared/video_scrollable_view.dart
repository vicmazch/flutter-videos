import 'package:flutter/material.dart';
import 'package:sec_six_app/domain/entities/video_post.dart';
import 'package:sec_six_app/presentation/widgets/shared/video_player/video_buttons.dart';
import 'package:sec_six_app/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];

        return Stack(
          children: [
            // VIDEO PLAYER
            SizedBox.expand(
              child: FullScreenPlayer(caption: video.caption, videoUrl: video.videoUrl),
            ),
            // BUTTONS
            Positioned( bottom: 40, right: 20, child: VideoButtons(video: video,))
          ],
        );
      },
      // children: [
      //   Container(color: Colors.red,),
      //   Container(color: Colors.blue,),
      //   Container(color: Colors.teal,),
      //   Container(color: Colors.yellow,),
      //   Container(color: Colors.pink,),
      //   Container(color: Colors.deepPurple,),
      // ],
    );
  }
}
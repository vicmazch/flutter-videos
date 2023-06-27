 import 'package:sec_six_app/domain/datasources/video_posts_datasource.dart';
import 'package:sec_six_app/domain/entities/video_post.dart';

import 'package:sec_six_app/infrastructure/models/local_video_model.dart';

import 'package:sec_six_app/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImp implements VideoPostsDatasource {

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userID) {
    // TODO: implement getTrendingVideosByUser
    throw UnimplementedError();
  }
   
 }
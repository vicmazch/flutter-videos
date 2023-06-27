
import 'package:sec_six_app/domain/datasources/video_posts_datasource.dart';
import 'package:sec_six_app/domain/entities/video_post.dart';
import 'package:sec_six_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImp implements VideoPostsRepository{

  final VideoPostsDatasource videoPostDatasource;

  VideoPostsRepositoryImp({
    required this.videoPostDatasource
  });

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDatasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userID) {
    // TODO: implement getTrendingVideosByUser
    throw UnimplementedError();
  }
  
}
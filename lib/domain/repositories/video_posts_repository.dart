
import 'package:sec_six_app/domain/entities/video_post.dart';

abstract class VideoPostsRepository {

  Future<List<VideoPost>> getTrendingVideosByUser( String userID );
  
  Future<List<VideoPost>> getTrendingVideosByPage( int page );
  
}
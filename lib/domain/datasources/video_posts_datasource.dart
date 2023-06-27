
import 'package:sec_six_app/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {

  Future<List<VideoPost>> getTrendingVideosByUser( String userID );
  
  Future<List<VideoPost>> getTrendingVideosByPage( int page );
  
}
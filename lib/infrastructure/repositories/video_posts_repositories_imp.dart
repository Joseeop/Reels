

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import '../../domain/repositories/video_posts_repositories.dart';




class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostDataSource videosDatasource;

  VideoPostsRepositoryImpl({
     required this.videosDatasource});


  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    
    return videosDatasource.getTrendingVideosByPage(page);
    
  }

}
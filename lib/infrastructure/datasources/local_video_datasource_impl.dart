

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';


/**
 * Esta clase es la implementación de video_post_datasource, siguiendo las reglas que hemos establecido en ella.
 */
class LocalVideosDatasource implements VideoPostDataSource{
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
    
    await Future.delayed(const Duration(seconds:2));


//Videos locales
    final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
    
  }

}
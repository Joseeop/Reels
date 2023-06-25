import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repositories.dart';




class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;

  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videoPostRepository
    });


  Future<void> loadNextPage() async {

    // await Future.delayed( const Duration(seconds: 2) );

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);
    
    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }


}
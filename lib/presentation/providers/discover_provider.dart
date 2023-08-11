import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/infraestructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik/share/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRespositoryImpl videoPostRespositoryImpl;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRespositoryImpl});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRespositoryImpl.getTrendingVideoByPage(1);
    videos.addAll(newVideos);

    initialLoading = false;

    notifyListeners();
  }
}

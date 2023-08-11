import 'package:toktik/domain/datasources/video_post_datasource.dart';

import '../../domain/entities/video_post.dart';
import '../../share/data/local_video_post.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(int userId) {
    // TODO: implement getFavoriteVideoByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}

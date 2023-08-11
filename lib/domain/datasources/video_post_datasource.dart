import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(int userId);
}

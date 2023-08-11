import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(int userId);
}
